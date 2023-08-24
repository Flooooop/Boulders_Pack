#version 440 core

in vec4 vertexColor;
in float dis;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {

    vec4 color = vertexColor;
    if ((color.a == 0.0 || dis > 0)) {
        discard;
    }
    fragColor = color * ColorModulator;
}