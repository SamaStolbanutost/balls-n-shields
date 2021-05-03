extends Node2D

var select_sound = load("res://sounds/select.wav")

func _ready():
	$AudioStreamPlayer.stream = global.select_sound

func laser_room():
	$AudioStreamPlayer.play()
	global.game_mode = "lr"
	print(global.game_mode)
	$bc_button.visible = false
	$lr_button.visible = false
	$choose_diff.visible = true

func hard_mode():
	$AudioStreamPlayer.play()
	global.speed = 0.5
	print(global.game_mode)
	global.movespeed = 2200
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func easy_mode():
	$AudioStreamPlayer.play()
	global.speed = 1.5
	global.movespeed = 1200
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://scenes/gameplay.tscn")

func close_diff_choose():
	$AudioStreamPlayer.play()
	$bc_button.visible = true
	$lr_button.visible = true
	$choose_diff.visible = false

func go_back():
	$AudioStreamPlayer.play()
	yield($AudioStreamPlayer, "finished")
	get_tree().change_scene("res://scenes/main_menu.tscn")

func ball_crush():
	$AudioStreamPlayer.play()
	global.game_mode = "bc"
	$bc_button.visible = false
	$lr_button.visible = false
	$choose_diff.visible = true
