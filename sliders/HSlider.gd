extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	#make sure slider is right
	$".".value = Settings.slider_value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	


func _on_value_changed(value):
	Settings.slider_value = value
	Globals.dof_blur_amount = value
