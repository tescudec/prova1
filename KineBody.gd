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
var posicio = position
onready var animacio = $AnimatedSprite
# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = rotacio

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if Input.is_action_just_pressed("mou amunt") and is_on_floor():
		velocitat += salt
	velocitat += gravetat * delta
	
	if position.y > 620:
		get_tree().change_scene("res://EscenaF.tscn")
	if Input.is_action_just_pressed('quit'):
		get_tree().quit()
	if Input.is_action_pressed("mou avall"):
		animacio.play('caure')
		velocitat.x = 75
	else:
		animacio.play('camina')
		velocitat.x = 150
	
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
func anima(_velocitat: Vector2):
	var animacio = $AnimatedSprite
	animacio.flip_h = true
	animacio.play('camina')
	
func _on_Portal_body_entered(body):
	get_tree().change_scene("res://2a.tscn")
func _on_Congrats_body_entered(body):
	get_tree().change_scene("res://EscenaCongrats.tscn")
	


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://EscenaF.tscn")
