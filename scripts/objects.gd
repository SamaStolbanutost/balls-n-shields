extends Node2D

var random_number = rand_range(0.0, 360.0)
var timer = 0.0

func _ready():
	randomize()
	$".".global_position = get_parent().get_node("generator").global_position
	$".".rotation_degrees = random_number
	if global.game_mode == "lr":
		$".".modulate.a = 0
	elif global.game_mode == "bc":
		$ball.transform.origin.y *= 4.0
		$another_ball.transform.origin.y *= 4.0

func _physics_process(delta):
	timer += delta
	if global.game_mode == "lr":
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
	elif global.game_mode == "bc":
		$"ball".transform.origin.y += delta * global.movespeed
		$"another_ball".transform.origin.y -= delta * global.movespeed

func ball_crush(area):
	global.score += 1
	$".".queue_free()

func shield_crush(body):
	global._game = false
	$"../lose".visible = true
	$".".queue_free()
