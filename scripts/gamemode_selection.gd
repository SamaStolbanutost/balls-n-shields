extends Node2D

func laser_room():
	$choose_diff_lr.visible = true

func hard_mode_lr():
	global.speed = 0.5
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func easy_mode_lr():
	global.speed = 1.5
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func close_diff_choose_lr():
	$choose_diff_lr.visible = false

func go_back():
	get_tree().change_scene("res://scenes/main_menu.tscn")
