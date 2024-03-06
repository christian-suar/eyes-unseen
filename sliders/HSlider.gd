extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	


func _on_value_changed(value):
	var dof_blur = preload("res://singlenode/dof_blur.tscn").new()
	dof_blur.dof_blur_strength = value
