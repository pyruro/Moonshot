extends Control

var dialog = [
	'Cada 100 años unos seres tienen como tradición',
	"disparar a la luna. Consideran acertar como señal",
	"de buena suerte (Son raros, lo sé).",
	"Se acerca el día y tu labor es reparar la luna",
	"si se diese el caso.",
	"Para ello ya te has preparado cogiendo las 9 piezas",
	"del artefacto godotiano",
	"Tu familia siempre se ha encargado de esto",
	"No puedes defraudar a la humanidad",
	"No por un estúpido MOONSHOT"
]

var dialog_index = 0
var finished = false

func _ready():
	load_dialog()

func _process(_delta):
	$next_indicator.visible = finished
	if finished:
		if Input.is_action_just_pressed("ui_accept"):
			load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
	dialog_index += 1


func _on_Tween_tween_completed(_object, _key):
	finished = true
