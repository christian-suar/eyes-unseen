extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	#make sure slider is right
	$".".value = Settings.slider_value




func _on_value_changed(value):
	Settings.slider_value = value

