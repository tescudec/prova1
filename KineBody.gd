extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat_base = 20
var velocitat = Vector2.DOWN * velocitat_base
var direccio = Vector2 (0,0)
var gravetat = Vector2.DOWN * 1000
var salt = Vector2.UP * 350
var rotacio = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = rotacio

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocitat.x = 150
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT
	if Input.is_action_just_pressed("mou amunt") and is_on_floor():
		rotation_degrees += 90
		velocitat += salt
	if Input.is_action_pressed("mou avall"):
		velocitat += Vector2.DOWN
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)



func _on_Portal_body_entered(body):
	get_tree().change_scene("res://2a.tscn")
