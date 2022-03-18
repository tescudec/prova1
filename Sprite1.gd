extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat_base = 100
var velocitat = Vector2.DOWN * velocitat_base

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_and_slide(velocitat)
