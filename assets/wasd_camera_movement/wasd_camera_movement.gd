extends Camera2D

export var speed: float = 20;

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("move_left"):
		position.x -= speed
	elif Input.is_action_pressed("move_right"):
		position.x += speed
	elif Input.is_action_pressed("move_up"):
		position.y -= speed
	elif Input.is_action_pressed("move_down"):
		position.y += speed
	#print(position)
	

