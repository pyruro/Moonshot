extends KinematicBody2D

var speed = 25
var movimiento = Vector2(0,0)

signal hit

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("particulas_fuego_nave").emitting = false
	get_node("parti_estab_down").emitting = false
	get_node("parti_estab_up").emitting = false
	get_node("parti_estab_left_up").emitting = false
	get_node("parti_estab_left_up/parti_estab_left_down").emitting = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("particulas_fuego_nave").emitting = false
	get_node("parti_estab_down").emitting = false
	get_node("parti_estab_up").emitting = false
	get_node("parti_estab_left_up").emitting = false
	get_node("parti_estab_left_up/parti_estab_left_down").emitting = false
	move(delta)
	

func move(delta):
	var velocity = Vector2() # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		get_node("particulas_fuego_nave").emitting = true
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		get_node("parti_estab_left_up").emitting = true
		get_node("parti_estab_left_up/parti_estab_left_down").emitting = true
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		get_node("parti_estab_up").emitting = true
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		get_node("parti_estab_down").emitting = true
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position.x = clamp(position.x, 0, 200)
	position.y = clamp(position.y, 0, 100)


func _on_nave_meteoro_body_entered(_body):
	emit_signal("hit")
	print("hit")
#	$CollisionShape2D.disabled = true
