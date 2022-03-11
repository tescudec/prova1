extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat : int = 20
export var direccio = Vector2 (0,0)
export var mida = Vector2 (1,1)
export var posicio = Vector2 (500,500) 
export  var rotacio = 90
# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	rotation_degrees = rotacio
	position = posicio
	scale = mida
# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	position += velocitat * delta *direccio 
#	if position.x >= 1024:
#		velocitat.x = -velocitat.x
#	if position.x <= 0:
#		velocitat.x = -velocitat.x
#	if position.y >= 600:
#		velocitat.y = -velocitat.y
#	if position.y <= 0:
#		velocitat.y = -velocitat.y
	if Input.is_action_pressed("mou dreta"):
		direccio = Vector2(1,0)
