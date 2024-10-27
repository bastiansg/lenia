#version 430

layout(binding = 0) readonly buffer read_buffer {
   float read[];
};

layout(std140, binding = 4) readonly restrict buffer color_buffer {
    uint n;
    vec4 colors[];
};

in vec2 fragCoord;

layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;
layout(location = 2) uniform uvec2 CenterOfMass;
//layout(location = 3) uniform uvec2 TopLeft;
//layout(location = 4) uniform uvec2 BottomRight;

vec2 normalized_coords = vec2(((fragCoord.x + 1.0) / 2.0) * float(W), (1.0 - ((fragCoord.y + 1.0) / 2.0)) * float(H));
uint index = uint(normalized_coords.x) + (uint(normalized_coords.y) * W);

out vec4 fragColor;

vec3 interpolateColor(float t) {
    float scaledT = t * float(n); 
    uint idx = uint(scaledT); 
    float frac = scaledT - float(idx); 

    if (idx >= n) {
        idx = n - 1;
        frac = 1.0;
    }
    vec3 color1 = colors[idx].xyz;
    vec3 color2 = colors[idx + 1].xyz;
    vec3 interpolatedColor = mix(color1, color2, frac);

    return interpolatedColor;
}

float scaling(float t) {
    return t;
}

void main() {
    //fragColor = vec4(colors[0].xyz, 1.0);
    const uint com_width = 5;
    const uint com_height = 5;

    const uint x = uint(normalized_coords.x);
    const uint y = uint(normalized_coords.y);
    
    // if (x >= CenterOfMass.x - com_width && x <= CenterOfMass.x + com_width &&
    //     y >= CenterOfMass.y - com_height && y <= CenterOfMass.y + com_height) {
    //     fragColor = vec4(1.0, 1.0, 1.0, 1.0);
    //     return;
    // }

    
    
    const float state = read[index];
    float offset = 0.0;
    // if (x >= TopLeft.x && x <= BottomRight.x && y >= TopLeft.y && y <=   BottomRight.y) {
    //     offset = -0.05;
    // }

    if (state <= 0.1 && (x % 64 == 0 || y % 64 == 0)) {
        fragColor = vec4(vec3(0.2), 0.2);   
        return;
    }

    const float color = scaling(state + offset);

    fragColor = vec4(interpolateColor(color), 1.0);
}