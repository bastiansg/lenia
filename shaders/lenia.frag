#version 430

layout(binding = 0) buffer fluid_buffer {
    float fluidState[];
};

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
layout(location = 6) uniform uint frameIndex;
layout(location = 7) uniform float NOISE_UV_SCALE_0;
layout(location = 8) uniform float NOISE_UV_SCALE_1;
layout(location = 9) uniform float NOISE_UV_SCALE_2;
layout(location = 10) uniform float NOISE_TIME_SCALE_0;
layout(location = 11) uniform float NOISE_TIME_SCALE_1;
layout(location = 12) uniform float NOISE_TIME_SCALE_2;
layout(location = 13) uniform float NOISE_PHASE_1;
layout(location = 14) uniform float NOISE_PHASE_2;
layout(location = 15) uniform float NOISE_WEIGHT_0;
layout(location = 16) uniform float NOISE_WEIGHT_1;
layout(location = 17) uniform float NOISE_WEIGHT_2;
layout(location = 18) uniform float STATE_CURL_BASE;
layout(location = 19) uniform float STATE_CURL_SCALE;
layout(location = 20) uniform float FLUID_CURL_SCALE;
layout(location = 21) uniform float VORTICITY_FLUID_SCALE;
layout(location = 22) uniform float VORTICITY_CONFINEMENT;
layout(location = 23) uniform float TURBULENCE_BASE;
layout(location = 24) uniform float TURBULENCE_DENSITY_SCALE;
layout(location = 25) uniform float BUOYANCY_BASE;
layout(location = 26) uniform float BUOYANCY_STATE_SCALE;
layout(location = 27) uniform float BUOYANCY_GRADIENT_SCALE;
layout(location = 28) uniform float ADVECTION_SCALE;
layout(location = 29) uniform float INJECTION_MIN_STATE;
layout(location = 30) uniform float INJECTION_MAX_STATE;
layout(location = 31) uniform float INJECTION_BASE;
layout(location = 32) uniform float INJECTION_STATE_SCALE;
layout(location = 33) uniform float NEIGHBOR_AVERAGE_WEIGHT;
layout(location = 34) uniform float LAPLACIAN_DIFFUSION_SCALE;
layout(location = 35) uniform float VISCOSITY;
layout(location = 36) uniform float DISSIPATION;
layout(location = 37) uniform float FOAM_SHEAR_SCALE;
layout(location = 38) uniform float FOAM_LAPLACIAN_SCALE;
layout(location = 39) uniform float ENERGY_VELOCITY_SCALE;
layout(location = 40) uniform float ENERGY_DENSITY_SCALE;
layout(location = 41) uniform float STATE_ADVECTION_SCALE;
layout(location = 42) uniform float TRANSPORT_MIX_SCALE;
layout(location = 43) uniform float OVERLAY_DENSITY_SCALE;
layout(location = 44) uniform float OVERLAY_ENERGY_SCALE;
layout(location = 45) uniform float OVERLAY_MAX;
layout(location = 46) uniform float WISP_BASE;
layout(location = 47) uniform float WISP_ENERGY_SCALE;
layout(location = 48) uniform float GRID_STATE_MAX;
layout(location = 49) uniform float GRID_COLOR;
layout(location = 50) uniform float GRID_ALPHA;
layout(location = 51) uniform vec3 SMOKE_COLOR_LOW;
layout(location = 52) uniform vec3 SMOKE_COLOR_HIGH;
layout(location = 53) uniform vec3 WISP_COLOR;
layout(location = 54) uniform vec4 CENTER_OF_MASS_COLOR;

out vec4 fragColor;

const float TAU = 6.28318530718;
const float HALF = 0.5;
const float ONE = 1.0;
const float TWO = 2.0;
const float THREE = 3.0;
const float FOUR = 4.0;
const float EPSILON = 1e-5;
const float HASH_SCALE_X = 233.34;
const float HASH_SCALE_Y = 851.74;
const float HASH_OFFSET = 23.45;
const float NOISE_DELTA = 0.5;
const int COM_MARKER_WIDTH = 5;
const int COM_MARKER_HEIGHT = 5;
const uint GRID_STEP = 64u;

vec2 getPixelCoords() {
    return vec2(
        ((fragCoord.x + ONE) * HALF) * float(W),
        (ONE - ((fragCoord.y + ONE) * HALF)) * float(H)
    );
}

ivec2 getCellCoords() {
    vec2 pixelCoords = getPixelCoords();
    pixelCoords = clamp(pixelCoords, vec2(0.0), vec2(float(W) - ONE, float(H) - ONE));
    return ivec2(pixelCoords);
}

ivec2 wrapCoords(ivec2 coord) {
    int wrappedX = (coord.x % int(W) + int(W)) % int(W);
    int wrappedY = (coord.y % int(H) + int(H)) % int(H);
    return ivec2(wrappedX, wrappedY);
}

uint getIndex(ivec2 coord) {
    ivec2 wrapped = wrapCoords(coord);
    return uint(wrapped.x) + uint(wrapped.y) * W;
}

uint getFluidIndex(ivec2 coord, uint phase) {
    return getIndex(coord) + phase * (W * H);
}

float sampleState(ivec2 coord) {
    return pixels[getIndex(coord)].x;
}

float sampleStateLinear(vec2 coord) {
    vec2 base = floor(coord);
    vec2 fraction = fract(coord);

    float s00 = sampleState(ivec2(base));
    float s10 = sampleState(ivec2(base) + ivec2(1, 0));
    float s01 = sampleState(ivec2(base) + ivec2(0, 1));
    float s11 = sampleState(ivec2(base) + ivec2(1, 1));

    float sx0 = mix(s00, s10, fraction.x);
    float sx1 = mix(s01, s11, fraction.x);
    return mix(sx0, sx1, fraction.y);
}

float sampleFluid(ivec2 coord, uint phase) {
    return fluidState[getFluidIndex(coord, phase)];
}

float sampleFluidLinear(vec2 coord, uint phase) {
    vec2 base = floor(coord);
    vec2 fraction = fract(coord);

    float s00 = sampleFluid(ivec2(base), phase);
    float s10 = sampleFluid(ivec2(base) + ivec2(1, 0), phase);
    float s01 = sampleFluid(ivec2(base) + ivec2(0, 1), phase);
    float s11 = sampleFluid(ivec2(base) + ivec2(1, 1), phase);

    float sx0 = mix(s00, s10, fraction.x);
    float sx1 = mix(s01, s11, fraction.x);
    return mix(sx0, sx1, fraction.y);
}

vec3 interpolateColor(float t) {
    if (n == 0u) {
        return vec3(t);
    }

    if (n == 1u) {
        return colors[0].xyz;
    }

    float scaledT = clamp(t, 0.0, 1.0) * float(n - 1u);
    uint idx = uint(floor(scaledT));
    uint nextIdx = min(idx + 1u, n - 1u);
    float frac = fract(scaledT);

    vec3 color1 = colors[idx].xyz;
    vec3 color2 = colors[nextIdx].xyz;
    vec3 interpolatedColor = mix(color1, color2, frac);

    return interpolatedColor;
}

bool insideBoundingBoxes(ivec4 box, int x, int y) {
    const int x0 = box.x;
    const int x1 = box.z;
    const int y0 = box.y;
    const int y1 = box.w;
	const int w = int(W);
	const int h = int(H);
	const bool left = x <= x1 || (x >= (x0 % w + w) % w && x0 < 0);
    const bool right = x >= x0 || (x <= (x1 % w) && x1 >= w);
    const bool top = y <= y1 || (y >= (y0 % h + h) % h && y0 < 0);
    const bool bottom = y >= y0 || (y <= (y1 % h) && y1 >= h);
    return left && right && top && bottom;
}


float hash21(vec2 p) {
    p = fract(p * vec2(HASH_SCALE_X, HASH_SCALE_Y));
    p += dot(p, p + HASH_OFFSET);
    return fract(p.x * p.y);
}

float valueNoise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (THREE - TWO * f);
    return mix(
        mix(hash21(i), hash21(i + vec2(ONE, 0.0)), f.x),
        mix(hash21(i + vec2(0.0, ONE)), hash21(i + vec2(ONE, ONE)), f.x),
        f.y
    );
}

vec2 curlNoise(vec2 p) {
    float dy = valueNoise(p + vec2(0.0, NOISE_DELTA)) - valueNoise(p - vec2(0.0, NOISE_DELTA));
    float dx = valueNoise(p + vec2(NOISE_DELTA, 0.0)) - valueNoise(p - vec2(NOISE_DELTA, 0.0));
    return vec2(dy, -dx) / (TWO * NOISE_DELTA);
}

struct FluidResult {
    float density;
    float foam;
    float energy;
    float advectedState;
};

vec2 computeFluidVelocity(ivec2 coord, float state, uint sourcePhase) {
    float fluidLeft  = sampleFluid(coord + ivec2(-1, 0), sourcePhase);
    float fluidRight = sampleFluid(coord + ivec2( 1, 0), sourcePhase);
    float fluidUp    = sampleFluid(coord + ivec2( 0,-1), sourcePhase);
    float fluidDown  = sampleFluid(coord + ivec2( 0, 1), sourcePhase);

    float stateLeft  = sampleState(coord + ivec2(-1, 0));
    float stateRight = sampleState(coord + ivec2( 1, 0));
    float stateUp    = sampleState(coord + ivec2( 0,-1));
    float stateDown  = sampleState(coord + ivec2( 0, 1));

    vec2 fluidGrad = HALF * vec2(fluidRight - fluidLeft, fluidDown - fluidUp);
    vec2 stateGrad = HALF * vec2(stateRight - stateLeft, stateDown - stateUp);

    vec2 stateCurl = vec2(-stateGrad.y, stateGrad.x);
    vec2 fluidCurl = vec2(-fluidGrad.y, fluidGrad.x);

    float vortHere  = (stateRight - stateLeft) - (stateDown - stateUp)
                    + VORTICITY_FLUID_SCALE * ((fluidRight - fluidLeft) - (fluidDown - fluidUp));
    float vortRight = abs((sampleState(coord + ivec2(2, 0)) - state)
                        - (sampleState(coord + ivec2(1,-1)) - sampleState(coord + ivec2(1, 1))));
    float vortLeft  = abs((state - sampleState(coord + ivec2(-2, 0)))
                        - (sampleState(coord + ivec2(-1,-1)) - sampleState(coord + ivec2(-1, 1))));
    float vortUp    = abs((sampleState(coord + ivec2(1,-1)) - sampleState(coord + ivec2(-1,-1)))
                        - (sampleState(coord + ivec2(0,-2)) - state));
    float vortDown  = abs((sampleState(coord + ivec2(1, 1)) - sampleState(coord + ivec2(-1, 1)))
                        - (state - sampleState(coord + ivec2(0, 2))));
    vec2 eta = vec2(vortRight - vortLeft, vortDown - vortUp);
    float etaLen = length(eta) + EPSILON;
    vec2 N = eta / etaLen;
    vec2 confinement = VORTICITY_CONFINEMENT * vec2(-N.y, N.x) * vortHere;

    vec2 mainVelocity = stateCurl * (STATE_CURL_BASE + state * STATE_CURL_SCALE) + fluidCurl * FLUID_CURL_SCALE + confinement;

    vec2 p = vec2(coord);
    vec2 turb = curlNoise(p * NOISE_UV_SCALE_0 + time * NOISE_TIME_SCALE_0) * NOISE_WEIGHT_0
              + curlNoise(p * NOISE_UV_SCALE_1 + time * NOISE_TIME_SCALE_1 + NOISE_PHASE_1) * NOISE_WEIGHT_1
              + curlNoise(p * NOISE_UV_SCALE_2 + time * NOISE_TIME_SCALE_2 + NOISE_PHASE_2) * NOISE_WEIGHT_2;

    float density = sampleFluid(coord, sourcePhase);
    vec2 buoyancy = vec2(0.0, -(BUOYANCY_BASE + state * BUOYANCY_STATE_SCALE + max(0.0, fluidGrad.y) * BUOYANCY_GRADIENT_SCALE) * density);

    return mainVelocity + turb * (TURBULENCE_BASE + density * TURBULENCE_DENSITY_SCALE) + buoyancy;
}

FluidResult simulateFluid(ivec2 coord, float state, uint sourcePhase, uint destinationPhase) {
    float center = sampleFluid(coord, sourcePhase);
    float left   = sampleFluid(coord + ivec2(-1, 0), sourcePhase);
    float right  = sampleFluid(coord + ivec2( 1, 0), sourcePhase);
    float up     = sampleFluid(coord + ivec2( 0,-1), sourcePhase);
    float down   = sampleFluid(coord + ivec2( 0, 1), sourcePhase);

    float laplacian = left + right + up + down - FOUR * center;
    float neighborAverage = NEIGHBOR_AVERAGE_WEIGHT * (left + right + up + down);

    vec2 velocity = computeFluidVelocity(coord, state, sourcePhase);
    vec2 tracedCoord = vec2(coord) - velocity * ADVECTION_SCALE;
    float advected = sampleFluidLinear(tracedCoord, sourcePhase);

    float injected = smoothstep(INJECTION_MIN_STATE, INJECTION_MAX_STATE, state) * (INJECTION_BASE + INJECTION_STATE_SCALE * state);

    float diffused = mix(advected + laplacian * LAPLACIAN_DIFFUSION_SCALE, neighborAverage, VISCOSITY);
    float newDensity = clamp(diffused * DISSIPATION + injected, 0.0, 1.0);

    fluidState[getFluidIndex(coord, destinationPhase)] = newDensity;

    float shear = abs((right - left) - (down - up));
    float foam = clamp(shear * FOAM_SHEAR_SCALE + abs(laplacian) * FOAM_LAPLACIAN_SCALE, 0.0, 1.0);

    float energy = clamp(length(velocity) * ENERGY_VELOCITY_SCALE + abs(newDensity - center) * ENERGY_DENSITY_SCALE, 0.0, 1.0);

    float advectedState = sampleStateLinear(vec2(coord) - velocity * STATE_ADVECTION_SCALE);

    return FluidResult(newDensity, foam, energy, advectedState);
}

vec3 applyFluidOverlay(vec3 baseColor, ivec2 coord, float state, uint sourcePhase, uint destinationPhase) {
    FluidResult fluid = simulateFluid(coord, state, sourcePhase, destinationPhase);
    vec3 transportedColor = interpolateColor(fluid.advectedState);

    vec3 smokeColor = mix(SMOKE_COLOR_LOW, SMOKE_COLOR_HIGH, fluid.density);
    vec3 wisps = WISP_COLOR;
    float transportMix = clamp(fluid.energy * TRANSPORT_MIX_SCALE, 0.0, TRANSPORT_MIX_SCALE);
    float overlayStrength = clamp(fluid.density * OVERLAY_DENSITY_SCALE + fluid.energy * OVERLAY_ENERGY_SCALE, 0.0, OVERLAY_MAX);

    vec3 mixedBase = mix(baseColor, transportedColor, transportMix);
    vec3 smoked = mix(mixedBase, max(mixedBase, smokeColor), overlayStrength);
    return smoked + wisps * (WISP_BASE + WISP_ENERGY_SCALE * fluid.energy);
}

void main() {
    vec2 pixelCoords = getPixelCoords();
    ivec2 cellCoords = getCellCoords();
    uint index = getIndex(cellCoords);
    uint sourcePhase = frameIndex & 1u;
    uint destinationPhase = 1u - sourcePhase;

    const uint x = uint(cellCoords.x);
    const uint y = uint(cellCoords.y);

    const float state = pixels[index].x;

    if (showGrid && state <= GRID_STATE_MAX && (x % GRID_STEP == 0u || y % GRID_STEP == 0u)) {
        fragColor = vec4(vec3(GRID_COLOR), GRID_ALPHA);
        return;
    }
    
    for (int i = 0; i < layerInfo.length(); i++) {
        vec2 com = layerInfo[i].centerOfMass;
        if (showCenterOfMass && layerInfo[i].showDebugInfo != 0u &&
            pixelCoords.x >= com.x - COM_MARKER_WIDTH && pixelCoords.x <= com.x + COM_MARKER_WIDTH &&
            pixelCoords.y >= com.y - COM_MARKER_HEIGHT && pixelCoords.y <= com.y + COM_MARKER_HEIGHT) {
            fragColor = CENTER_OF_MASS_COLOR;
            return;
        }
    }

    vec3 baseColor = interpolateColor(state);
    vec3 shadedColor = applyFluidOverlay(baseColor, cellCoords, state, sourcePhase, destinationPhase);
    fragColor = vec4(shadedColor, ONE);
}