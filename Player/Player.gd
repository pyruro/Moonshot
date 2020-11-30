extends Area2D

var speed = 64
var tile_size = 16 #length and width of the player

var last_position = Vector2() #desde donde nos movemos, posicion actual
var target_position = Vector2() #a donde nos movemos
var movedir = Vector2() #direccion

var last_direction

onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")

onready var ray =  $RayCast2D



func _ready():
	position = position.snapped(Vector2(tile_size/2, tile_size/2)) #nos aseguramos de que este bien colocado en el grid
	last_position = position
	target_position = position
	
	
func _process(delta):
	#MOVEMENT
	
	if ray.is_colliding():
		position = last_position
		target_position = last_position
	else:
		position += speed * movedir * delta
		if position.distance_to(last_position) >= tile_size - speed * delta: #el -speed * delta es para que sea suave el movim
			position = target_position
		
	
	#IDLE
	if position == target_position:
		get_movedir()
		last_position = position
		target_position += movedir * tile_size

func get_movedir():
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")
	
	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)
	
	if movedir.x != 0 && movedir.y != 0:
		movedir = Vector2.ZERO
		
	if movedir != Vector2.ZERO:
		ray.cast_to = movedir * tile_size / 2
		animationTree.set("parameters/Idle/blend_position", movedir)
		animationTree.set("parameters/Walk/blend_position", movedir)
		animationState.travel("Walk")
	else:
		animationState.travel("Idle")
