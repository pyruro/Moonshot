extends Node2D

onready var pieza_correcta = 0

signal signal_pieza_correcta(pieza_correcta)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_lugar_p1_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP1":
		pieza_correcta = 1
		emit_signal("signal_pieza_correcta", pieza_correcta)
	pass # Replace with function body.
