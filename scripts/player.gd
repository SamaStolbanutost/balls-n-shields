extends Node2D

var act = "none"
var speed = 7.5

func turn_left_pressed():
	act = "turn-left"

func turn_right_pressed():
	act = "turn-right"

func turn_left_released():
	act = "none"

func turn_right_released():
	act = "none"

func _physics_process(delta):
	if global._game:
		if act == "turn-left" or Input.is_action_pressed("ui_left"):
			$".".rotation_degrees -= speed
	
		elif act == "turn-right" or Input.is_action_pressed("ui_right"):
			$".".rotation_degrees += speed

func restart_game():
	global.score = 0
	global._game = true
	get_tree().reload_current_scene()
