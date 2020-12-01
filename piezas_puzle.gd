extends Node2D

onready var pieza1_correcta = 0
onready var pieza2_correcta = 0
onready var pieza3_correcta = 0
onready var pieza4_correcta = 0
onready var pieza5_correcta = 0
onready var pieza6_correcta = 0
onready var pieza7_correcta = 0
onready var pieza8_correcta = 0
onready var pieza9_correcta = 0

#signal signal_pieza_correcta(pieza_correcta)
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
		pieza1_correcta = 1
	pass # Replace with function body.


func _on_lugar_p2_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP2":
		pieza2_correcta = 1
	pass # Replace with function body.


func _on_lugar_p3_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP3":
		pieza3_correcta = 1
	pass # Replace with function body.


func _on_lugar_p4_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP4":
		pieza4_correcta = 1
	pass # Replace with function body.


func _on_lugar_p5_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP5":
		pieza5_correcta = 1
	pass # Replace with function body.


func _on_lugar_p6_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP6":
		pieza6_correcta = 1
	pass # Replace with function body.


func _on_lugar_p7_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP7":
		pieza7_correcta = 1
	pass # Replace with function body.


func _on_lugar_p8_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP8":
		pieza8_correcta = 1
	pass # Replace with function body.


func _on_lugar_p9_body_entered(body):
	if body.rotation_degrees == 0 and body.name == "colocarP9":
		pieza9_correcta = 1
	pass # Replace with function body.
