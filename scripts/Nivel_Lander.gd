extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var portal = $Portal
onready var timer = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	remove_child(portal)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(timer.time_left)
	pass


func _on_Area2D_body_entered(body):
	if body.name == "Nave":
		timer.start()
	

func _on_Timer_timeout():
	add_child(portal)
	pass # Replace with function body.
