extends RigidBody2D


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if Input.is_action_pressed("up"):
		apply_central_force(700 * transform.x)
	constant_force = 4 * transform.y
	state.transform = state.transform.looking_at(get_global_mouse_position())
