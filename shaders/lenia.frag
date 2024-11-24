#version 430

layout(binding = 1) readonly buffer read_buffer {
   float read[];
};

layout(std140, binding = 4) readonly buffer color_buffer {
    uint n;
    vec4 colors[];
};

layout(std430, binding = 5) readonly buffer bounding_box_buffer {
	ivec4[] boundingBoxes;
};

in vec2 fragCoord;

layout(location = 0) uniform uint W;
layout(location = 1) uniform uint H;
layout(location = 2) uniform ivec2 CenterOfMass;
layout(location = 3) uniform bool showBoundingBoxes;
layout(location = 4) uniform bool showGrid;
layout(location = 5) uniform bool showCenterOfMass;

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

bool insideBoundingBoxes(int x, int y) {
	for (int i = 0; i < boundingBoxes.length(); i++) {
		ivec4 box = boundingBoxes[i];
        const int x0 = box.x;
        const int x1 = box.z;
        const int y0 = box.y;
        const int y1 = box.w;
		const bool left = x <= x1 || (x >= (x0 % W + W) % W) && x0 < 0;
        const bool right = x >= x0 || (x <= (x1 % W) && x1 >= W);
        const bool top = y <= y1 || (y >= (y0 % H + H) % H && y0 < 0);
        const bool bottom = y >= y0 || (y <= (y1 % H)) && y1 >= W;
        if (left && right && top && bottom) {
			return true;
		}
	}
	return false;
}

bool onBoundingBoxEdge(uint x, uint y) {
    for (int i = 0; i < boundingBoxes.length(); i++) {
		ivec4 box = boundingBoxes[i];
        const int x0 = box.x;
        const int x1 = box.z;
        const int y0 = box.y;
        const int y1 = box.w;
		return x == ((x0 % W + W) % W) || x == (x1 % W) || y == ((y0 % H + H) % H) || y == (y1 % H);
	}
	return false;
}

void main() {
    const int com_width = 5;
    const int com_height = 5;

    const uint x = uint(normalized_coords.x);
    const uint y = uint(normalized_coords.y);
    
    if (showCenterOfMass && (normalized_coords.x >= CenterOfMass.x - com_width && normalized_coords.x <= CenterOfMass.x + com_width &&
        normalized_coords.y >= CenterOfMass.y - com_height && normalized_coords.y <= CenterOfMass.y + com_height)) {
        fragColor = vec4(1.0, 1.0, 1.0, 1.0);
        return;
    }

    if (showBoundingBoxes && insideBoundingBoxes(int(x), int(y))) {
        fragColor = vec4(interpolateColor(read[index]) + 0.2, 1.0);
        return;
    }

    const float state = read[index];
    float offset = 0.0;

    if (showGrid && state <= 0.1 && (x % 64 == 0 || y % 64 == 0)) {
        fragColor = vec4(vec3(0.2), 0.2);   
        return;
    }

   // const float color = scaling(state + offset);

    fragColor = vec4(interpolateColor(state), 1.0);
}