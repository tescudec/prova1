extends KinematicBody2D


var velocitat = Vector2.DOWN


# Called when the node enters the scene tree for the first time.
func _ready():
	velocitat.y = 10


func _physics_process(delta):
	if is_on_floor() or is_on_ceiling():
		velocitat.y = velocitat.y * -1
	move_and_slide(velocitat, Vector2.UP)
	
	
