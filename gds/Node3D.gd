extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.camera = $Camera3D
	Globals.camera.attributes.dof_blur_far_enabled = true
func _process(delta):
	Globals.camera.attributes.dof_blur_amount = Globals.dof_blur_amount
	Globals.camera.attributes.dof_blur_far_enabled = Settings.enabled
	#print(Globals.camera.attributes.dof_blur_amount)
