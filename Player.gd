extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var player = $AnimatedSprite
var alive = true
var started = false

func jump():
	linear_velocity.y = -160


# Called when the node enters the scene tree for the first time.
func _ready():
	player.flip_h = true
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_just_pressed('ui_up') && alive:
		jump()
