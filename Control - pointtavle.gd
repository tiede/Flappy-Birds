extends Control

onready var AntalPoint = get_node("Label - point")

func set_antal_point(point):
	$"Label - point".text = str(point)

# Called when the node enters the scene tree for the first time.
func _ready():
	set_antal_point(0)
