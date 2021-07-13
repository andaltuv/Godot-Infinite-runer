extends Node2D


onready var Tree = preload("res://Environment/Tree.tscn")
onready var timer = $Timer

func _ready():
	timer.start()

func spawn_tree():
	var random_obstacle = rand_range(0, 1)
	random_obstacle = int(round(random_obstacle))
	if(random_obstacle == 1):
		var new_tree = Tree.instance()
		new_tree.position.y = -16
		add_child(new_tree)
	

func _on_Timer_timeout():
	spawn_tree()
