extends Node2D

func _ready():
	$AudioStreamPlayer.stream = global.select_sound

func play():
	$AudioStreamPlayer.play()
	get_tree().change_scene("res://scenes/gamemode_selection.tscn")

func settings():
	$AudioStreamPlayer.play()
