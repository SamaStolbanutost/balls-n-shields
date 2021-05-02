extends Node2D

var timer = 0.0
var preload_laser = preload("res://chars/laser.tscn")
var preload_balls = preload("res://chars/balls.tscn")
var laser
var balls
var objects_instance

func _physics_process(delta):
	objects_instance = [preload_laser.instance(), preload_balls.instance()]
	if global._game:
		timer += delta
		if timer >= global.speed + 0.1:
			if global.game_mode == "lr":
				get_parent().add_child(objects_instance[0])
			elif global.game_mode == "bc":
				get_parent().add_child(objects_instance[1])
			timer = 0
