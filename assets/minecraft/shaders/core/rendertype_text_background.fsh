#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;


in vec2 surfaceCoord;
in float modify;
in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor * ColorModulator;

    if (modify > 0.5) {
        float resolution = 3;
        vec2 uv = abs(round((surfaceCoord*2-1)*resolution)/resolution);
        color = vec4(uv,0,1);
        fragColor = color;
    }
    else {
        fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
    }
}    
