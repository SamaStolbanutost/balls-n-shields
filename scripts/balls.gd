extends Node2D

var movespeed = 1200
var random_number = rand_range(0.0, 360.0)
var timer = 0.0

func _ready():
	$".".modulate.a = 0
	randomize()
	$".".global_position = $"../balls_generator".global_position
	$".".rotation_degrees = random_number

func _physics_process(delta):
	timer += delta
	if timer <= global.speed / 2:
		if global.speed < 1.0:
			$".".modulate.a = timer
		else:
			$".".modulate.a = timer / 2
	if timer >= global.speed:
		if $laser/laser_collision.get_overlapping_bodies() != []:
			global._game = false
			$"../lose".visible = true
			$".".queue_free()
		else:
			global.score += 1
			$".".queue_free()
