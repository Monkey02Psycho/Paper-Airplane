extends Control

var button_match = RegEx.new()
var option_buttons = []
func _ready():
	button_match.compile("((b|B)utton[1-6])")
	for i in get_children():
		if button_match.search(i.name):
			option_buttons.append(i.name)
	$coin_amount.text = str(Global.coins / 10)



func _on_Button1_button_down():
	print("pressed")
	
func aerodynamics():
	Global.updgrades_purchased["aerodynamics"] = true
	
func better_body():
	Global.updgrades_purchased["better body"] = true
	
func bounce():
	Global.updgrades_purchased["bounce"] = true
	
func better_engine():
	Global.updgrades_purchased["better engine"] = true
	
func lighter():
	Global.updgrades_purchased["lighter"] = true
	
func stearing():
	Global.updgrades_purchased["stearing"] = true


func _on_Button_pressed():
	get_tree().change_scene("res://assets/main.tscn")


func _on_bounce_pressed():
	bounce()


func _on_increased_launch_power_pressed():
	better_engine()


func _on_steering_pressed():
	stearing()


func _on_aerodynamic_pressed():
	aerodynamics()


func _on_lightweight_pressed():
	lighter()
