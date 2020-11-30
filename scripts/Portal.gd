extends Area2D

export (String) var escena



func _on_Portal_area_entered(area):
	if area.name == "Player":
		get_tree().change_scene("res://niveles/" + escena + ".tscn")


func _on_Portal_body_entered(body):
	if body.name == "nave_meteoro" or body.name == "Nave":
		get_tree().change_scene("res://niveles/" + escena + ".tscn")
