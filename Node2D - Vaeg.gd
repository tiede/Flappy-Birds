extends Node2D

func _physics_process(delta):
	position.x += -100 * delta
	if global_position.x <= -50:
		queue_free()
		print("vaeg fjernet")

func _on_Area2D__Top_body_entered(body):
	print("top ramt")
	get_tree().change_scene("res://Node2D - Game over.tscn")
	
func _on_Area2D__Bund_body_entered(body):
	print("bund ramt")
	get_tree().change_scene("res://Node2D - Game over.tscn")

func _on_Area2D_body_entered(body):
	print("wuhu - point")
