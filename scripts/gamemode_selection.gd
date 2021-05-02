extends Node2D

func laser_room():
	global.game_mode = "lr"
	$choose_diff.visible = true

func hard_mode():
	global.speed = 0.5
	global.movespeed = 2200
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func easy_mode():
	global.speed = 1.5
	global.movespeed = 1200
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func close_diff_choose():
	$choose_diff.visible = false

func go_back():
	get_tree().change_scene("res://scenes/main_menu.tscn")

func ball_crush():
	global.game_mode = "bc"
	$choose_diff.visible = true
