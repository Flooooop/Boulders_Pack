
#version 440 core

#define HOVER_Z 0

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;
out float dis;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vec4 position = gl_Position;
    dis = 0.0;
    if (position.z == HOVER_Z) {
        dis = 0.0;
    }
    vertexColor = Color;
}
