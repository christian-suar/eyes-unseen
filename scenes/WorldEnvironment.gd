extends WorldEnvironment


# Called when the node enters the scene tree for the first time.
func _ready():
	var environment = $"."


func apply_dof_blur(strength):
	environment.dof_blur_amount = strength

