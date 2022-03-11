extends Sprite
export var velocitat := 300
var direccio = Vector2(400,260)

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(150,250)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direccio * velocitat * delta
	
	if Input.is_action_just_pressed("mou dreta"):
		direccio += Vector2(1,0)
	
	
#	position += velocitat * delta 
#	if position.x > 1000:
#		velocitat.x = -velocitat.x
#	if position.x < 20:
#		velocitat.x = -velocitat.x
#	if position.y > 580:
#		velocitat.y = -velocitat.y
#	if position.y < 20:
#		velocitat.y = -velocitat.y
