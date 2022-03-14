extends Area2D
var velocitat := 300
var direccio = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(150,250)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("mou abaix"):
		direccio += Vector2.DOWN
	if Input.is_action_pressed("mou adalt"):
		direccio += Vector2.UP
	
	position += direccio.normalized() * velocitat * delta 
	direccio = Vector2.ZERO
	
#	position += velocitat * delta 
#	if position.x > 1000:
#		velocitat.x = -velocitat.x
#	if position.x < 20:
#		velocitat.x = -velocitat.x
#	if position.y > 580:
#		velocitat.y = -velocitat.y
#	if position.y < 20:
#		velocitat.y = -velocitat.y
func _on_Personatge_area_entered(area):
	modulate = Color(2,0,0)
	

