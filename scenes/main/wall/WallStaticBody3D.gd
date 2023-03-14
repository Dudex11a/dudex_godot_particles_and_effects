extends StaticBody3D


@onready var wall: MeshInstance3D = %Wall


@export var wall_materials: Array[Material] = []
@export var current_wall_material_index: int = 0:
	set(value):
		current_wall_material_index = value
		wall.set_surface_override_material(0, wall_materials[current_wall_material_index])


func left_clicked() -> void:
	increment_current_wall_material_index(true)


func right_clicked() -> void:
	increment_current_wall_material_index(false)


func increment_current_wall_material_index(up_or_down: bool) -> void:
	var increment: int = -1
	if up_or_down:
		increment = 1
	self.current_wall_material_index = (current_wall_material_index + increment) % wall_materials.size()
