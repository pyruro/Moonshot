extends RigidBody2D

var posX = 0
var posY = 0
var iResetPosition = true
var level = 0
var roll = 0
export var rollSpeed: = 3
export var maxThrust: = 0.5
var health = 100
var fuel = 100
var fuelRate = 5
var thrust = 0
var prevPosition
var iOnPad = false
var iOnGround = false
var healthReward = 5
var fuelReward = 10

func _ready():
	pause_mode = Node.PAUSE_MODE_STOP
	can_sleep = false
	initialize(0)

func initialize(level):
	#seed(level * 2)
	#posX = rand_range(0,200)
	posX = 60
	posY = 30
#	set_linear_velocity(Vector2.ZERO)
	iResetPosition = true
	prevPosition = position
	iOnPad = false
	if level == 1:
		health = 100
		fuel = 100
	else:
		fuel = min(fuel + fuelReward, 100)
		health = min(health + healthReward, 100)

func _physics_process(delta):
	thrust = 0
	get_node("CPUParticles2D").emitting = false
	
	if fuel > 0 and health > 0:
		if Input.is_action_pressed("ui_up"):
			fuel -= fuelRate * delta
			thrust = maxThrust
			get_node("CPUParticles2D").emitting = true
			#Add sound
	if health > 0:
		roll = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")

func _integrate_forces(state):
	if iResetPosition:
		state.transform = Transform2D(0, Vector2(posX, posY))
		iResetPosition = false
	if position.y > 740:
		level += 1
		initialize(level)
	
	state.apply_torque_impulse(roll * rollSpeed)
	state.apply_impulse(Vector2(0.0, 0.0), Vector2(0.0,-thrust).rotated(rotation))

#	if position.x < 0:
#		state.transform = Transform2D(rotation, Vector2(100, position.y))
#	if position.x > 100:
#		state.transform = Transform2D(rotation, Vector2(0, position.y))
	
	var moveDist = prevPosition - position
	prevPosition = position
	
#	if state.get_contact_count() > 0:
#		var c = state.get_contact_collider_object(0)
#		if c.name == 'Pad':
#			if (rotation < 0.05) and moveDist.x < 0.05:
#				iOnPad = true
#		if c.name == 'Surface':
#			if !iOnGround:
#				health -= moveDist.length() * 20
#				iOnGround = true
#	else:
#		iOnGround = false
#		iOnPad = false
