extends Node2D

onready var dialogo = $DialogBox
onready var animatedSprite = $AnimatedSprite
onready var timer = $Timer
export (String) var escena
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	animatedSprite
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not dialogo:
		animatedSprite.play()

#	get_tree().change_scene("res://niveles/" + escena + ".tscn")
#	pass





func _on_AnimatedSprite_animation_finished():
	timer.start()


func _on_Timer_timeout():
	get_tree().change_scene("res://niveles/" + escena + ".tscn")
