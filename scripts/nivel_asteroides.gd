extends Node2D

#export (PackedScene) var meteor

export(int) var parallax_speed: int = 10
#export(float) var rotation_speed: float = 0.3 #radianes 3 es para ir en circulos

var parallax_direction = Vector2(-1, 0)

onready var spawn_meteoritos = true

onready var parallax = $ParallaxEspacio
onready var parallax_luna = $ParallaxLuna

onready var tiempo = $Timer

onready var label_tiempo = $label_tiempo

const meteor = preload("res://meteor/meteor.tscn")

func _ready():
	spawn()
	parallax_luna.get_node("ParallaxLayer").hide()
	pass
	
func spawn():
	while spawn_meteoritos:
		randomize()
		var roca = meteor.instance()
		var pos = Vector2()
		pos.x = 200
#		pos.y = rand_range(5, get_viewport().get_visible_rect().size.y-5)
		pos.y = rand_range(20, 80)
		roca.set_position(pos)
		get_node("RockPath").add_child(roca)
		yield(get_tree().create_timer(rand_range(0.5,1)),"timeout")
	pass

func _process(delta):
	parallax.scroll_offset += parallax_direction * parallax_speed * delta
#	direction = direction.rotated(rotation_speed * delta
	label_tiempo.text = str(int(tiempo.get_time_left()))
	if not spawn_meteoritos:
		parallax_luna.scroll_offset += parallax_direction * parallax_speed * delta

func _on_Timer_timeout():
	spawn_meteoritos = false
#	parallax_luna.visible = not parallax_luna.visible
	parallax_luna.get_node("ParallaxLayer").show()
	parallax.get_node("ParallaxLayer").hide()
