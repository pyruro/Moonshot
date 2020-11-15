extends KinematicBody2D

var colocacion_correcta_pieza = 0


var dragging = false

signal dragsignal

func _ready():
	connect("dragsignal",self,"_set_drag_pc")

func _process(_delta):
	if dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.position = Vector2(mousepos.x, mousepos.y)
	#if (test_control_pieza && Input.is_action_just_released("click")):
	#	print("Left mouse button released.")

	if colocacion_correcta_pieza:
		if not dragging:
			print("PIEZA COLOCADA")
			input_pickable = false
			colocacion_correcta_pieza = 0


func _set_drag_pc():
	dragging =! dragging

func _on_StaticBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
		elif event is InputEventScreenTouch:
			if event.pressed and event.get_index() == 0: #selecciona solo el primer toque para el multitouch
				self.position = event.get_position()


func _on_Area2D_body_exited(body):
	colocacion_correcta_pieza = 0
	print("hola "+body.name) # Replace with function body.

func _on_Area2D_body_entered(body):
	if dragging:
		colocacion_correcta_pieza = 1

