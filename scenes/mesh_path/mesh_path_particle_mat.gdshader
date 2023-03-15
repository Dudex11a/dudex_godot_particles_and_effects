shader_type particles;

void start() {
	// Reset position
	TRANSFORM[3] = vec4(0.0);
}

void process() {
	
	VELOCITY.y = 5.0;
}
