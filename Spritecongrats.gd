extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	if Input.is_action_just_pressed("mou amunt"): #or Input.is_action_just_pressed("click"):
	   get_tree().change_scene("res://Terra.tscn")
	if Input.is_action_just_pressed('quit'):
		get_tree().quit()
