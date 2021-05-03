extends Node2D

var timer = 0.0
var triangle_preload = preload("res://chars/triangle.tscn")
var triangle

func _ready():
	triangle = triangle_preload.instance()
	$".".add_child(triangle)

func _physics_process(delta):
	triangle = triangle_preload.instance()
	timer += delta
	if timer >= 1.5:
		timer = 0
		$".".add_child(triangle)
