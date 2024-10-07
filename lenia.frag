#version 430

layout(binding = 0) readonly buffer read_buffer {
   float read[];
};

in vec2 fragCoord;


layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;

vec2 normalized_coords = vec2(((fragCoord.x + 1.0) / 2.0) * float(W), (1.0 - ((fragCoord.y + 1.0) / 2.0)) * float(H));
uint index = uint(normalized_coords.x) + (uint(normalized_coords.y) * W);

out vec4 fragColor;

const vec3 colors[7] = vec3[7](
    vec3(0.0, 0.0, 0.0),    // Black
    vec3(0.33, 0.0, 0.33),  // Purple
    vec3(0.0, 0.0, 1.0),    // Blue
    vec3(0.0, 1.0, 0.0),    // Green
    vec3(1.0, 1.0, 0.0),    // Yellow
    vec3(1.0, 0.66, 0.0),   // Orange
    vec3(1.0, 0.0, 0.0)     // Red
);


vec3 interpolateColor(float t) {
    int n = 6;
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
    fragColor = vec4(vec3(interpolateColor(read[index])), 1.0);
}