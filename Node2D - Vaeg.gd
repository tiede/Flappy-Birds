extends Node2D

func _physics_process(delta):
	position.x += -100 * delta
	if global_position.x <= -50:
		queue_free()
		print("vaeg fjernet")
