extends KinematicBody2D

const GRAVITY = 0.2 # in pixels
const IMPULSO = 0.22

var velocity = Vector2.ZERO
var impulso_cohete = Vector2.ZERO

func _ready():
	pass
	

func _on_Timer_timeout():
	print(str($Timer.wait_time) + " seconds")

func _physics_process(delta):
	
	velocity.y += GRAVITY
	
	if Input.is_action_pressed("ui_up"):
		impulso_cohete.y += IMPULSO
		velocity.y = velocity.y - impulso_cohete.y * delta
	
	
	velocity = move_and_slide(velocity)
	



