extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.camera = $Camera3D

func _process(_delta):
	Globals.camera.attributes.dof_blur_amount = Globals.slider_value
	Globals.camera.attributes.dof_blur_far_enabled = Globals.enabled
	Globals.camera.attributes.dof_blur_far_distance = Globals.dof_blur_far_distance
	
	#print(Globals.camera.attributes.dof_blur_amount)
