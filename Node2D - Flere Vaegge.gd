extends Node2D

onready var timer = $Timer

var VAEG = preload("res://Node2D - Vaeg.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	var vaeg = VAEG.instance()
	add_child(vaeg)
	var y = randi() % 170 + 1
	print(y)
	vaeg.position.y = y
