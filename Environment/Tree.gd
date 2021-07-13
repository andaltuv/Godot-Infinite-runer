extends Node2D


const MOB_SPEED = 25

func _physics_process(delta):
	position.x -= MOB_SPEED * delta
	if global_position.x <= -100:
		queue_free()
