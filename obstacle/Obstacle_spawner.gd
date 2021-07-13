extends Node2D

onready var timer = $Timer
var Mob = preload("res://obstacle/mob_obstacle.tscn")
var FlyingMob = preload("res://obstacle/Flying_obstacle.tscn")
var PlantMob = preload("res://obstacle/Plant_Mob.tscn")

func _ready():
	randomize()
	timer.start()
	
func spawn_obstacle():
	var random_obstacle = rand_range(0, 3)
	random_obstacle = int(round(random_obstacle))
	if(random_obstacle == 1):
		var obstacle = Mob.instance()
		add_child(obstacle)
	if(random_obstacle == 2):
		var obstacle = FlyingMob.instance()
		obstacle.position.y = obstacle_position()
		print(obstacle.position)
		add_child(obstacle)
	if(random_obstacle == 3 ):
		var obstacle = PlantMob.instance()
		obstacle.position.y = 5
		add_child(obstacle)
	

func obstacle_position():
	var random_position = rand_range(0, 2)
	random_position = int(round(random_position))
	if(random_position == 0):
		return -23
	elif(random_position == 1):
		return -7
	else:
		return -1

func _on_Timer_timeout():
	spawn_obstacle()
