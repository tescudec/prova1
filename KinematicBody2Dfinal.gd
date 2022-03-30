extends KinematicBody2D


var velocitat = Vector2.DOWN


## Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("puja i baixa")

