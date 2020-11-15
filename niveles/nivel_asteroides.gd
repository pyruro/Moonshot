extends Node2D

#export (PackedScene) var meteor

const meteor = preload("res://meteor/meteor.tscn")

func _ready():
	spawn()
	pass
	
func spawn():
	while true:
		randomize()
		var roca = meteor.instance()
		var pos = Vector2()
		pos.x = 200
		pos.y = rand_range(5, get_viewport().get_visible_rect().size.y-5)
		roca.set_position(pos)
		get_node("RockPath").add_child(roca)
		yield(get_tree().create_timer(rand_range(0.5,1.5)),"timeout")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
