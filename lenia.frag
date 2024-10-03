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

layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;
layout(location = 2) uniform uint R;
layout(location = 3) uniform float dt;
layout(location = 4) uniform float mu;
layout(location = 5) uniform float sigma;
layout(location = 6) uniform float dx2;
layout(location = 7) uniform uint gn;

vec2 normalized_coords = vec2((fragCoord.x + 1.0) / 2.0, 1.0 - ((fragCoord.y + 1.0) / 2.0)) * float(W);
uint index = uint(normalized_coords.x) + (uint(normalized_coords.y) * W);

bool zero(const float x) {
    return x > -1e-6 && x < 0.0001;
}

float G_(const float u) {
    switch(gn) {
        case 0:
            return pow(max(0.0, 1.0 - pow(u - mu, 2.0) / (9.0 * sigma * sigma)), 4.0) * 2.0 - 1.0;
        case 1:
            return exp(-pow(u - mu, 2.0) / (2.0 * sigma * sigma)) * 2.0 - 1.0;
        case 2:
            return abs(u - mu) * 2.0 - 1.0;
    }
}


// Define the colors
const vec3 colors[6] = vec3[6](
    vec3(0.0, 0.0, 0.0),    // Black
    vec3(0.33, 0.0, 0.33),  // Purple
    vec3(0.0, 0.0, 1.0),    // Blue
    vec3(0.0, 1.0, 0.0),    // Green
    vec3(1.0, 1.0, 0.0),    // Yellow
    vec3(1.0, 0.0, 0.0)     // Red
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
    const float state = clamp(read[index] + (dt * G_(Ut * dx2)), 0.0, 1.0);
    write[index] = state;
    vec3 color = interpolateColor(state);
    //color = blur(color, fragCoord);
    fragColor = vec4(color, 1.0);
}