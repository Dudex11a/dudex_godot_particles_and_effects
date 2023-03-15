shader_type spatial;
render_mode unshaded;


uniform sampler2D TEXTURE;


void fragment() {
	vec2 texture_size = vec2(textureSize(TEXTURE, 0));
	ALBEDO = textureLod(TEXTURE, FRAGCOORD.xy / texture_size, 0.0).rgb;
}
