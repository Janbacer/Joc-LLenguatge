extends KinematicBody2D

var velocitat_base = 250
var velocitat = Vector2.ZERO 
var gravetat = Vector2.DOWN * 2000
var salt = Vector2.UP *550
var salts_disponibles = 0

func _ready():
	velocitat.y = -200
	
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
	
	if position.y > 500:
		get_tree().reload_current_scene()
	
	anima(velocitat)
	
func anima(velocitat: Vector2):
	var animacio: AnimatedSprite = $AnimatedSprite
	if velocitat.x > 0:
		animacio.flip_h = false
		animacio.play("camina")
	elif velocitat.x < 0:
		animacio.flip_h = true
		animacio.play("camina")
	if abs(velocitat.x) < 0.1:
		animacio.play("quiet")
	if velocitat.y < -1:
		animacio.play("salta")


func _on_Area2D_body_entered(body):
	position = Vector2(100,400)
	get_tree().change_scene("res://Escenes/Escena 2.tscn")
	
