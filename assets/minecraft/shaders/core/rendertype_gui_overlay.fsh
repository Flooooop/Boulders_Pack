#version 440 core

in vec4 vertexColor;
in float modify;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {

    vec4 color = vertexColor;
    if (color.a == 0.0) {discard;}
    if (modify == 1.0) {
        //color = vec4(1,1,1,1);
    }
    fragColor = color * ColorModulator;
}