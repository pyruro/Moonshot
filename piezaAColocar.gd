extends Node2D

onready var p2 = get_node("colocarP2")
onready var p3 = get_node("colocarP3")







onready var piezas = [p2,p3]

onready var pieza_padre = Node2D

func _ready():
	var button = $BotonRotacion
	button.connect("pressed", self, "_button_pressed")
#	add_child(button)

func _process(_delta):
	pass

#func _button_pressed():
#	print("Hello world!")


func _on_BotonRotacion_pressed():
	pieza_padre.rotation_degrees += 90
	
	pass # Replace with function body.
