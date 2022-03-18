extends KinematicBody2D

var velocitat_base = 250
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 1200
var salt = Vector2.UP *550
var salts_disponibles = 0

func _ready():
	position = Vector2(500,70)
	
func _physics_process(delta):
	velocitat.x = 0
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if is_on_floor():
		salts_disponibles = 2
	 
	if Input.is_action_just_pressed("mou adalt") and salts_disponibles > 0:
		velocitat.y = salt.y
		salts_disponibles -= 1
		
		
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)
