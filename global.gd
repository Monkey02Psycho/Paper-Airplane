extends Node
var coins = 0
var updgrades_purchased = {}
var material = PhysicsMaterial.new()
var colors = {"white": Color("fdfbfb"), "red": Color("ee4035"), "orange": Color("f37736"), "light_yellow": Color("fdf498"), "green": Color("7bc043"), "blue": Color("0392cf"), "black": Color("343d46")}
func _ready():
	material.absorbent = false
	material.bounce = 0.5
	material.friction = 0.25
	
	if Vector2(55, 55) > Vector2(1, 1):
		print("forward")
	
