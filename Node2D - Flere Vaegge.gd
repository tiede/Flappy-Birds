extends Node2D

onready var timer = $Timer

var VAEG = preload("res://Node2D - Vaeg.tscn")

func _on_Timer_timeout():
	var vaeg = VAEG.instance()
	add_child(vaeg)
