extends RigidBody2D

var lista_impulsos = []

var constant_force: Vector2 = Vector2(-5,0)

var impulso_inicial = Vector2(rand_range(-25,-5),rand_range(-15,15))

var durability = 3
export (int) var min_speed
export (int) var max_speed
# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector2(0,0), impulso_inicial)	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

