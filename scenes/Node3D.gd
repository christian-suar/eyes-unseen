extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.camera = $Camera3D
func _process(delta):
	Globals.camera.attributes.dof_blur_amount = Globals.dof_blur_amount
	print(Globals.camera.attributes.dof_blur_amount)
