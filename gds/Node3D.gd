extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.camera = $Camera3D

func _process(_delta):
	Globals.camera.attributes.dof_blur_amount = Globals.dof_blur_amount
	Globals.camera.attributes.dof_blur_far_enabled = Settings.enabled
	Globals.camera.attributes.dog_blur_far_distance = Globals.dof_blur_far_distance
	#print(Globals.camera.attributes.dof_blur_amount)
