extends Node2D

#
var selector_pieza_seleccionada
#
#onready var piezas = [p2,p3]
#
#onready var pieza_padre = Node2D

func _ready():
	pass
#	var button = $BotonRotacion
#	button.connect("pressed", self, "_button_pressed")
#	add_child(button)

func _process(_delta):
	pass

#func _button_pressed():
#	print("Hello world!")

#
#func _on_BotonRotacion_pressed():
#	p3.rotation_degrees += 90
#
#	pass # Replace with function body.


func _on_ButtonRotation_pressed():
	if selector_pieza_seleccionada.rotation_degrees == 270:
		selector_pieza_seleccionada.rotation_degrees = 0
	else:
		selector_pieza_seleccionada.rotation_degrees += 90
	pass # Replace with function body.


func _on_colocarP1_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP2_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP3_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP4_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP5_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP6_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP7_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP8_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.


func _on_colocarP9_selectsignal(pieza_seleccionada):
	selector_pieza_seleccionada = pieza_seleccionada
	pass # Replace with function body.
