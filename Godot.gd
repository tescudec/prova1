extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var velocitat : int = 20
export var direccio = Vector2 (0,0)
export var mida = Vector2 (1,1)
export var posicio = Vector2 (500,500) 
export  var rotacio = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	rotation_degrees = rotacio
	position = posicio
	scale = mida
# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(delta):
	var vel = int(20)
	
#	if position.x >= 1024:
#		velocitat.x = -velocitat.x
#	if position.x <= 0:
#		velocitat.x = -velocitat.x
#	if position.y >= 600:
#		velocitat.y = -velocitat.y
#	if position.y <= 0:
#		velocitat.y = -velocitat.y
	if Input.is_action_pressed("mou dreta"):
		direccio = Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		direccio = Vector2.LEFT
	if Input.is_action_pressed("mou amunt"):
		direccio = Vector2.UP
	if Input.is_action_pressed("mou avall"):
		direccio = Vector2.DOWN
	if Input.is_action_pressed("gira"):
		rotation_degrees += 10
	if Input.is_action_pressed("augmenta velocitat"):
		velocitat += 1
	if Input.is_action_pressed("disminueix velocitat"):
		velocitat -= 1
	if Input.is_action_pressed("augmenta mida"):
		scale += Vector2(0.1,0.1)
	if Input.is_action_pressed("disminueix mida"):
		scale += Vector2(-0.1,-0.1)
	position += velocitat * delta *direccio.normalized()
	direccio = Vector2(0,0)


func _on_Personatge_area_entered(area):
	modulate = Color(1,0,0)
#	$Godot.rotation_degrees = 45
func _on_Personatge_area_exited(area):
	modulate = Color(1,1,1)
#	$Godot.rotation_degrees = -45
