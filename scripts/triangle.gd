extends Sprite

var random_number = rand_range(0, 6) 
var triangles_sprites = [preload("res://sprites/triangles/blue_triangle.png"), preload("res://sprites/triangles/green_triangle.png"), preload("res://sprites/triangles/pink_triangle.png"), preload("res://sprites/triangles/red_triangle.png"), preload("res://sprites/triangles/violet_triangle.png"), preload("res://sprites/triangles/white_triangle.png"), preload("res://sprites/triangles/yellow_triangle.png")]

func _ready():
	randomize()
	$".".texture = triangles_sprites[random_number]

func _physics_process(delta):
	$".".position.y += 2.0
	if $".".position.y >= 177 * 4.5:
		$".".queue_free()
