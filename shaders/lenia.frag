#version 430


layout(binding = 1) buffer pixel_buffer {
   vec2 pixels[];
};

layout(std140, binding = 4) readonly buffer color_buffer {
    uint n;
    vec4 colors[];
};

struct LayerInfo {
    ivec4 boundingBox;
    vec2 centerOfMass;
    float mass;
    uint showDebugInfo;
    vec2 toroidalCosineSum;
    vec2 toroidalSineSum;
};

layout(std140, binding = 3) readonly buffer data_buffer {
    LayerInfo[] layerInfo;
};


in vec2 fragCoord;

layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;
layout(location = 2) uniform bool showBoundingBoxes;
layout(location = 3) uniform bool showGrid;
layout(location = 4) uniform bool showCenterOfMass;
layout(location = 5) uniform float time;

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

bool insideBoundingBoxes(ivec4 box, int x, int y) {
    const int x0 = box.x;
    const int x1 = box.z;
    const int y0 = box.y;
    const int y1 = box.w;
	const bool left = x <= x1 || (x >= (x0 % W + W) % W) && x0 < 0;
    const bool right = x >= x0 || (x <= (x1 % W) && x1 >= W);
    const bool top = y <= y1 || (y >= (y0 % H + H) % H && y0 < 0);
    const bool bottom = y >= y0 || (y <= (y1 % H)) && y1 >= W;
    return left && right && top && bottom;
}

float fluid(float state) {
    float angle = state * 6.2831 + time;
    vec2 offset = ivec2(cos(angle), sin(angle));

    ivec2 coordA = ivec2(clamp(normalized_coords + offset, ivec2(0), ivec2(int(W), int(W))));
    ivec2 coordB = ivec2(clamp(normalized_coords + offset, ivec2(0), ivec2(int(W), int(W))));

    uint indexA = coordA.y * W + coordA.x;
    uint indexB = coordB.y * W + coordB.x;

    float sampleA = pixels[indexA].x;
    float sampleB = pixels[indexB].x;

    return (sampleA + 0.95 * sampleB) * 0.5;
}

void main() {
    const int com_width = 5;
    const int com_height = 5;

    const uint x = uint(normalized_coords.x);
    const uint y = uint(normalized_coords.y);

    const float state = pixels[index].x;

    if (showGrid && state <= 0.1 && (x % 64 == 0 || y % 64 == 0)) {
        fragColor = vec4(vec3(0.2), 0.2);   
        return;
    }

    //float fluid_state = fluid(state);
    
    for (int i = 0; i < layerInfo.length(); i++) {
        vec2 com = layerInfo[i].centerOfMass;
        if (showCenterOfMass && layerInfo[i].showDebugInfo != 0u &&
            normalized_coords.x >= com.x - com_width && normalized_coords.x <= com.x + com_width &&
            normalized_coords.y >= com.y - com_height && normalized_coords.y <= com.y + com_height) {
            fragColor = vec4(1.0, 0.0, 0.0, 1.0);
            return;
        }

        // if (insideBoundingBoxes(layerInfo[i].boundingBox, int(x), int(y))) {
        //     fragColor = vec4(interpolateColor(state) + 0.2, 1.0);
        //     return;
        // }
    }

    pixels[index].x = state;

    fragColor = vec4(interpolateColor(state), 1.0);
}