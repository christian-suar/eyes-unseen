extends Node3D


var shake_fade = 0.09     # How quickly the shake fades out
var rng= RandomNumberGenerator.new()

func _process(delta):
	var shake_strength = Globals.craze 
	if Globals.in_area_with_enemies and Globals.canSee == false:
		shake_fade = 0.5
	else:
		shake_fade = 0.09
	var offset = Vector3(
		rng.randf_range(-shake_strength, shake_strength),
		rng.randf_range(-shake_strength, shake_strength),
		rng.randf_range(-shake_strength, shake_strength)
	)
	$Camera3D.position += offset

	if Globals.losing_it == false or Globals.in_area_2 == false or Globals.canSee == false:
		# Fade the shake effect over time
		shake_strength -= shake_fade * delta
		shake_strength = max(0.0, shake_strength)
		Globals.craze = shake_strength










#
#var shakeStrength = 0.0
#@onready var sane = 5.0
#@onready var craze = 30.0
#var rng = RandomNumberGenerator.new()
#
#func crazeShake():
	#shakeStrength = craze
#
#func randomOffset():
	#return Vector3(rng.randf_range(-shakeStrength, shakeStrength),rng.randf_range(-shakeStrength, shakeStrength),0)
#
#
#func process(delta):
	#print('eertews')
	#if Input.is_action_just_pressed("Interact"):
		#print("te")
		#crazeShake()
		#print('te')
	#
	#if shakeStrength > 0:
		#shakeStrength = lerpf(shakeStrength,0,sane*delta)
		#$Camera3D.h_offset = randomOffset()
#



# Called when the node enters the scene tree for the first time
