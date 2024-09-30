#version 430

layout(binding = 0) readonly buffer read_buffer {
   float read[];
};

layout(binding = 1) writeonly buffer write_buffer {
   float write[];
};

layout(binding = 2) readonly buffer kernel_buffer {
   float kernel[];
};

in vec2 fragCoord;
out vec4 fragColor;

uniform sampler2D image;

layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;

layout(location = 2) uniform uint R;

uniform float dx2;
uniform float dt;

vec2 normalized_coords = vec2((fragCoord.x + 1.0) / 2.0, 1.0 - ((fragCoord.y + 1.0) / 2.0)) * float(W);
uint index = uint(normalized_coords.x) + (uint(normalized_coords.y) * W);

bool zero(const float x) {
    return x > -0.0001 && x < 0.0001;
}

float G(const float u, const float mu, const float sigma) {
    const float num = (u - mu) * (u - mu);
    const float den = 2.0 * sigma * sigma;
    return (2.0 * exp(float(- num / den))) - 1.0;
}

// Define the colors
const vec3 colors[6] = vec3[6](
    vec3(0.0, 0.0, 0.0),    // Black
    vec3(0.33, 0.0, 0.33),  // Purple
    vec3(0.0, 0.0, 1.0),    // Blue
    vec3(0.0, 1.0, 0.0),    // Green
    vec3(1.0, 1.0, 0.0),    // Yellow
    vec3(1.0, 0.0, 0.0)   // Red
);

// Interpolation function
vec3 interpolateColor(float t) {
    int n = 5;
    float scaledT = t * float(n); 
    int idx = int(scaledT); 
    float frac = scaledT - float(idx); 

    if (idx >= n) {
        idx = n - 1;
        frac = 1.0;
    }
    vec3 color1 = colors[idx];
    vec3 color2 = colors[idx + 1];
    vec3 interpolatedColor = mix(color1, color2, frac);

    return interpolatedColor;
}

vec3 blur(vec3 color, vec2 coords) {
    vec2 offsets[25] = vec2[](
        vec2(-2,  2), vec2(-1,  2), vec2(0,  2), vec2(1,  2), vec2(2,  2),
        vec2(-2,  1), vec2(-1,  1), vec2(0,  1), vec2(1,  1), vec2(2,  1),
        vec2(-2,  0), vec2(-1,  0), vec2(0,  0), vec2(1,  0), vec2(2,  0),
        vec2(-2, -1), vec2(-1, -1), vec2(0, -1), vec2(1, -1), vec2(2, -1),
        vec2(-2, -2), vec2(-1, -2), vec2(0, -2), vec2(1, -2), vec2(2, -2)
    );

    float normKernel[25] = float[](
        1/256.0,  4/256.0,  6/256.0,  4/256.0,  1/256.0,
        4/256.0, 16/256.0, 24/256.0, 16/256.0,  4/256.0,
        6/256.0, 24/256.0, 36/256.0, 24/256.0,  6/256.0,
        4/256.0, 16/256.0, 24/256.0, 16/256.0,  4/256.0,
        1/256.0,  4/256.0,  6/256.0,  4/256.0,  1/256.0
    );

    vec3 result = vec3(0.0);

    for (int i = 0; i < 25; i++)
    {
        vec2 samplePos = fragCoord + offsets[i] * (1. / 1500.0);
        result += texture(image, samplePos).rgb * normKernel[i];
    }

    return result;
}

void main() {
    const uint x = uint(normalized_coords.x);
    const uint y = uint(normalized_coords.y);
    const int iR = int(R);
    float Ut = 0;
    for (int i = 0; i <= iR; i++) {
        for (int j = 0; j <= iR; j++) {
            if ((i * i + j * j) > iR * iR) continue;
            const float kn = kernel[i * iR + j];
            if (x + i < W && y + j < H) Ut += kn * read[((y + j) * W) + (x + i)];
            if (x + i < W && y - j >= 0 && j != 0) Ut += kn * read[((y - j) * W) + (x + i)];
            if (x - i >= 0 && y + j < H && i != 0) Ut += kn * read[((y + j) * W) + (x - i)];
            if (x - i >= 0 && y - j >= 0 && i != 0 && j != 0) Ut += kn * read[((y - j) * W) + (x - i)];
        }
    }
    const float state = clamp(read[index] + (dt * G(Ut * dx2, 0.15, 0.015)), 0.0, 1.0);
    write[index] = state;
    vec3 color = interpolateColor(state);
    //color = blur(color, fragCoord);
    fragColor = vec4(color, 1.0);
}