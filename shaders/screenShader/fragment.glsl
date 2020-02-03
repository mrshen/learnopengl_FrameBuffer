#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D screenTexture;

void main()
{
	// normal mode
    vec3 col = texture(screenTexture, TexCoords).rgb;
    FragColor = vec4(col, 1.0);

	// inverse mode
//	FragColor = vec4(vec3(1.0 - texture(screenTexture, TexCoords)), 1.0);

	// gray mode
//	vec4 col = texture(screenTexture, TexCoords);
//	float average = (col.r + col.g + col.b) / 3.0;
//    FragColor = vec4(vec3(average), 1.0);
} 