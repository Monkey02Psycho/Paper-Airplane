extends Node2D

const VELOCITY: float = -10.0
var g_texture_width: float = 0
var start_position: Vector2

func _ready():
	g_texture_width = $Sprite.texture.get_size().x * $Sprite.scale.x
	start_position = $Sprite.position
	Global.backgound_position = start_position
	print(g_texture_width)
	
	
func _process(delta):
	if _aprox(int(Global.backgound_position.x) % int(g_texture_width)):
		$Sprite.position.x  = position.x
	else:
		$Sprite.position.x
		
func _aprox(value, error=5):
	if (-error <= value) and  (value <= error):
		print("changing background position")
		return true
	else:
		return false
