extends Control


var dialog = [
'Every 100 years some aliens have a humble tradition: Shoot the moon.',
"They consider hitting it as a sign of good luck (They are weird, I know).",
"The day is coming and your job is to repair the moon ... if that were the case.",
"For this you have already prepared by taking the 9 pieces of the godotian artifact.",
"Your family has always taken care of this with their special indestructible ship.",
"You can NOT let humanity down!",
"Not for a stupid MOONSHOT!"
]
onready var fin_dialogo = 0
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
#		queue_free()
		fin_dialogo = 1

	dialog_index += 1


func _on_Tween_tween_completed(_object, _key):
	finished = true
