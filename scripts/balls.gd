extends Node2D

var movespeed = 1200
var random_number = rand_range(0.0, 360.0)

func _ready():
	randomize()
	$"ball".transform.origin.y *= 4.0
	$"another_ball".transform.origin.y *= 4.0
	$".".global_position = $"../balls_generator".global_position
	$".".rotation_degrees = random_number

func _physics_process(delta):
	$"ball".transform.origin.y -= delta * movespeed
	$"another_ball".transform.origin.y += delta * movespeed

# warning-ignore:unused_argument
func area_entered(area):
	global.score += 1
	$".".queue_free()

func body_collision(body):
	global._game = false
	$"../lose".visible = true
	$".".queue_free()
