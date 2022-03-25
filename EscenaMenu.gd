extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_just_pressed("mou amunt"): #or Input.is_action_just_pressed("click"):
	   get_tree().change_scene("res://Terra.tscn")
	if Input.is_action_just_pressed('quit'):
		get_tree().quit()


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Terra.tscn")
