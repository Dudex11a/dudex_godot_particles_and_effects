extends Node3D


@onready var camera: Camera3D = %Camera
@onready var ray_cast_3d: RayCast3D = %RayCast3D


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		var mouse_pos: Vector2 = get_viewport().get_mouse_position()
		var project_ray_normal: Vector3 = camera.project_ray_normal(mouse_pos)
		# Adjust ray_cast aim.
		ray_cast_3d.target_position = project_ray_normal * 100
		# Get ray_ast values.
		ray_cast_3d.force_raycast_update()
		var ray_cast_collider: Object = ray_cast_3d.get_collider()
		var ray_cast_point: Vector3 = ray_cast_3d.get_collision_point()
		# Trigger clicked object
		if is_instance_valid(ray_cast_collider):
			# If left clicked
			if event.button_index == 1:
				if ray_cast_collider.has_method("left_clicked"):
					ray_cast_collider.left_clicked()
			# If right clicked
			if event.button_index == 2:
				if ray_cast_collider.has_method("right_clicked"):
					ray_cast_collider.right_clicked()
