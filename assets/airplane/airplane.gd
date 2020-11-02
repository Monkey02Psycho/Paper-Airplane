
extends RigidBody2D

signal hit

var i = -1
var keys = []

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
	
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("second")
	for color in Global.colors:
		keys.append(color)
	apply_upgrades()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("switch_color"):
		i+=1
	#print(Global.colors[keys[i]])
	#print(keys[i])
	if i >= len(Global.colors):
		i = 0
	$AnimatedSprite.modulate = Global.colors.get(keys[i], "white")
	if linear_velocity > Vector2(1, 1):
		# $Timer.start(0.5)
		$AnimatedSprite.play("neutral airplane")
		#print($AnimatedSprite.get_animation())
		$AnimatedSprite.play("tilt_down")
	if linear_velocity.y < 1:
		# $Timer.start(0.5)
		$AnimatedSprite.play("neutral airplane")
		#print($AnimatedSprite.get_animation())
		$AnimatedSprite.play("second")
		

# is negitive because Y positive is down
export var thrust = Vector2(250, 0)
export var torque = 50000

func _integrate_forces(state):
	if Input.is_action_pressed("ui_up"):
		applied_force = thrust.rotated(rotation)
	else:
		applied_force = Vector2(0 , 0)
	var rotation_dir = 0
	if Input.is_action_pressed("ui_right"):
		rotation_dir += 1
	if Input.is_action_pressed("ui_left"):
		rotation_dir -= 1
	applied_torque = rotation_dir * torque
	if Input.is_action_pressed("ui_accept"):
		linear_velocity = Vector2()
		angular_velocity = 0
		


	


func _on_RigidBody2D_body_entered(body):
	hide()  # Player disappears after being hit.
	emit_signal("hit")
	$CollisionShape2D.set_deferred("disabled", true)
	
func apply_upgrades():
	if "aerodynamics" in Global.updgrades_purchased:
		pass
	if "better body" in Global.updgrades_purchased:
		thrust = thrust * 1.5
		Global.material.bounce = Global.material.bounce + 0.25
		gravity_scale = 1
	if "better engine" in Global.updgrades_purchased:
		thrust = thrust * 1.5
	if "lighter" in Global.updgrades_purchased:
		pass
	if "bounce" in Global.updgrades_purchased:
		physics_material_override = Global.material
	if "stearing" in Global.updgrades_purchased:
		pass
