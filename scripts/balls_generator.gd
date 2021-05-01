extends Node2D

var timer = 0.0
var preload_balls = preload("res://chars/balls.tscn")
var balls = null

func _physics_process(delta):
	if global._game:
		balls = preload_balls.instance()
		timer += delta
		if timer >= 1:
			get_parent().add_child(balls)
			timer = 0
