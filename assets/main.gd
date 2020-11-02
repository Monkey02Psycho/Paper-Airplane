extends Node2D

const FOLLOW_SPEED = 5
var t = 0
var image_width
var can_switch = false
func _ready():
	image_width = int($background.texture.get_size().x * $background.scale.x)
	print(image_width)
	print($background.position.x)

func _process(delta):
	$camera/HUD.update_score(int($airplane2D.position.x))
	$camera.position = $camera.position.linear_interpolate($airplane2D.position, delta * FOLLOW_SPEED)
	
	#print(" background position: ", $background.position.x)
	#print(" background2 position: ", $background2.position.x)
	#print(int(times_divided(int($airplane2D.position.x), image_width)))
	if int(times_divided(int($airplane2D.position.x), image_width)) % 2 == 0:
		$background2.position.x = $background.position.x + image_width
	if int(times_divided(int($airplane2D.position.x), image_width)) % 2 == 1:
		$background.position.x = $background2.position.x + image_width
	should_change($airplane2D.linear_velocity)
	
		

func times_divided(num, divider):
	return (num - num % divider) / divider
	
func should_change(velocity):
	if velocity < Vector2(2, 2) and can_switch:
		get_tree().change_scene("res://assets/shop/shop.tscn")
		Global.coins += $airplane2D.position.x


func _on_until_switch_timeout():
	can_switch = true


