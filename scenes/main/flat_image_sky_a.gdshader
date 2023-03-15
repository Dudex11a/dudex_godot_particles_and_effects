shader_type sky;


uniform sampler2D background_texture;


void sky() {
	vec2 tex_size = vec2(textureSize(background_texture, 0));
	vec2 uv = FRAGCOORD.xy / tex_size;
	uv += vec2(TIME / 5.0);
	vec4 tex = texture(background_texture, uv);
	COLOR = tex.rgb;
}
