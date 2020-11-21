extends Node2D

export(int) var speed: int = 10
#export(float) var rotation_speed: float = 0.3 #radianes 3 es para ir en circulos

var direction = Vector2(-1, 0)

onready var parallax = $ParallaxBackground

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	parallax.scroll_offset += direction * speed * delta
#	direction = direction.rotated(rotation_speed * delta
