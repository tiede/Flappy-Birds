extends KinematicBody2D

onready var LOGO = get_node("/root/FlappyBird/FlappyBirdLogo")
onready var START = get_node("/root/FlappyBird/Startknap")
onready var VAEGGE = get_node("/root/FlappyBird/Node2D - Flere Vaegge")

var bevaegelse = Vector2(0,0)
var TYNGDEKRAFT = 3
var HOPSTYRKE = -120

var point = 0
var highscore = 0

var start_spillet = false

onready var HUD = get_node("/root/FlappyBird/HUD")

func _physics_process(delta):
	if Input.is_action_just_pressed("Start") and !start_spillet:
		start_spil()
	elif start_spillet == true:
		if Input.is_action_just_pressed("Flyv"):
			bevaegelse.y += HOPSTYRKE
			
		bevaegelse.y += TYNGDEKRAFT
		bevaegelse = move_and_slide(bevaegelse, Vector2.UP)
		
		# Detect collision with screen
		if position.y > get_viewport().size.y:
			game_over()
		if position.y < 0:
			game_over()

func tilfoej_point():
	point += 1
	HUD.set_antal_point(point)

func game_over():
	get_tree().change_scene("res://Node2D - Game over.tscn")

func start_spil():
	start_spillet = true
	LOGO.set_visible(false)
	START.set_visible(false)
	VAEGGE.start()
