@tool
extends Node3D

@onready var fire_bright: GPUParticles3D = $FireBright
@onready var fire_dark: GPUParticles3D = $FireDark


@export var emitting: bool = true:
	set(value):
		emitting = value
		fire_bright.emitting = emitting
		fire_dark.emitting = emitting
