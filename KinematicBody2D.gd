extends KinematicBody2D

var bevaegelse = Vector2(0,0)
var TYNGDEKRAFT = 3
var HOPSTYRKE = -150

var point = 0
var highscore = 0

onready var HUD = get_node("/root/FlappyBird/HUD")

func _physics_process(delta):
	if Input.is_action_just_pressed("Flyv"):
		bevaegelse.y += HOPSTYRKE
		
	bevaegelse.y += TYNGDEKRAFT
	bevaegelse = move_and_slide(bevaegelse, Vector2.UP)

func tilfoej_point():
	point += 1
	print(HUD)
	HUD.set_antal_point(point)
