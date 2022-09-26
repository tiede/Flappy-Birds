extends Node2D

func _physics_process(delta):
	position.x += -100 * delta
	if global_position.x <= -50:
		queue_free()
		print("vaeg fjernet")

func _on_Area2D__Top_body_entered(body):
	print("top ramt")
	
func _on_Area2D__Bund_body_entered(body):
	print("bund ramt")


func _on_Area2D_body_entered(body):
	print("wuhu - point")
