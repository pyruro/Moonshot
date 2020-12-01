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
onready var p2lp2 = lugares_puzle.pieza2_correcta
onready var p3lp3 = lugares_puzle.pieza3_correcta
onready var p4lp4 = lugares_puzle.pieza4_correcta
onready var p5lp5 = lugares_puzle.pieza5_correcta
onready var p6lp6 = lugares_puzle.pieza6_correcta
onready var p7lp7 = lugares_puzle.pieza7_correcta
onready var p8lp8 = lugares_puzle.pieza8_correcta
onready var p9lp9 = lugares_puzle.pieza9_correcta

var todo_correcto = []

func _ready():
#	lugares_puzle.connect("signal_pieza_correcta",Node2D,[])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	p1lp1 = lugares_puzle.pieza1_correcta
	p2lp2 = lugares_puzle.pieza2_correcta
	p3lp3 = lugares_puzle.pieza3_correcta
	p4lp4 = lugares_puzle.pieza4_correcta
	p5lp5 = lugares_puzle.pieza5_correcta
	p6lp6 = lugares_puzle.pieza6_correcta
	p7lp7 = lugares_puzle.pieza7_correcta
	p8lp8 = lugares_puzle.pieza8_correcta
	p9lp9 = lugares_puzle.pieza9_correcta
	
	todo_correcto = [p1lp1,p2lp2,p3lp3,p4lp4,p5lp5,p6lp6,p7lp7,p8lp8,p9lp9]
	
	if p1lp1 and not p1.dragging:
		p1.get_node("Sprite1").set_centered(false)
		p1.position = lp1.global_position
		p1.dragging=false
	if p2lp2 and not p2.dragging:
		p2.get_node("Sprite2").set_centered(false)
		p2.position = lp2.global_position
		p2.dragging=false
	if p3lp3 and not p3.dragging:
		p3.get_node("Sprite3").set_centered(false)
		p3.position = lp3.global_position
		p3.dragging=false
	if p4lp4 and not p4.dragging:
		p4.get_node("Sprite4").set_centered(false)
		p4.position = lp4.global_position
		p4.dragging=false
	if p5lp5 and not p5.dragging:
		p5.get_node("Sprite5").set_centered(false)
		p5.position = lp5.global_position
		p5.dragging=false
	if p6lp6 and not p6.dragging:
		p6.get_node("Sprite6").set_centered(false)
		p6.position = lp6.global_position
		p6.dragging=false
	if p7lp7 and not p7.dragging:
		p7.get_node("Sprite7").set_centered(false)
		p7.position = lp7.global_position
		p1.dragging=false
	if p8lp8 and not p8.dragging:
		p8.get_node("Sprite8").set_centered(false)
		p8.position = lp8.global_position
		p8.dragging=false
	if p9lp9 and not p9.dragging:
		p9.get_node("Sprite9").set_centered(false)
		p9.position = lp9.global_position
		p9.dragging=false
	if p1lp1==1 and p2lp2==1 and p3lp3==1 and p4lp4==1 and p5lp5==1 and p6lp6==1 and p7lp7==1 and p8lp8==1 and p9lp9:
		print("VICTORIA")
		p1lp1 = 0



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
