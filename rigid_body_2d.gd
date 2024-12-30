extends RigidBody2D

var thrust = 700

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if Input.is_action_pressed("up"):
		apply_central_force(thrust * global_transform.x)
		linear_damp = 0.5
	else:
		linear_damp = 0
	var mouse_pos = get_global_mouse_position()
	state.transform = state.transform.looking_at(get_global_mouse_position())
