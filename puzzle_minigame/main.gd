extends Node2D

onready var nodo_con_piezas = get_node("nodo_con_piezas_puzle")
onready var p1 = get_node("nodo_con_piezas_puzle/colocarP1")
onready var p2 = get_node("nodo_con_piezas_puzle/colocarP2")
onready var p3 = get_node("nodo_con_piezas_puzle/colocarP3")
onready var p4 = get_node("nodo_con_piezas_puzle/colocarP4")
onready var p5 = get_node("nodo_con_piezas_puzle/colocarP5")
onready var p6 = get_node("nodo_con_piezas_puzle/colocarP6")
onready var p7 = get_node("nodo_con_piezas_puzle/colocarP7")
onready var p8 = get_node("nodo_con_piezas_puzle/colocarP8")
onready var p9 = get_node("nodo_con_piezas_puzle/colocarP9")


onready var lp1 = get_node("lugares_puzle/lugar_p1")
onready var lp2 = get_node("lugares_puzle/lugar_p2")
onready var lp3 = get_node("lugares_puzle/lugar_p3")
onready var lp4 = get_node("lugares_puzle/lugar_p4")
onready var lp5 = get_node("lugares_puzle/lugar_p5")
onready var lp6 = get_node("lugares_puzle/lugar_p6")
onready var lp7 = get_node("lugares_puzle/lugar_p7")
onready var lp8 = get_node("lugares_puzle/lugar_p8")
onready var lp9 = get_node("lugares_puzle/lugar_p9")

onready var lugares_puzle = get_node("lugares_puzle")

onready var nonulo

onready var p1lp1 = lugares_puzle.pieza1_correcta

func _ready():
	print(p1lp1)
	print(p1.dragging)
#	lugares_puzle.connect("signal_pieza_correcta",Node2D,[])
	pass # Replace with function body.


func _handle():
	print("uweueuueueu")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print(p1lp1)
	if p1lp1:
		print("YESSSS")
		p1lp1 = 0
	pass



#func test():
#	if ("selector_pieza_seleccionada" != null in nodo_con_piezas):
#		print("hay")
##		nonulo = nodo_con_piezas.selector_pieza_seleccionada.name
#	print(nonulo)

#	if colocacion_correcta_pieza:
#		if not dragging:
#			print("PIEZA COLOCADA")
#			input_pickable = false
##			position = nodoPieza1.global_position
#			colocacion_correcta_pieza = 0
