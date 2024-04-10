extends Node3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$OmniLight3D.light_energy = (Globals.craze / (delta*2)) + 1
#	$OmniLight3D.omni_range = (Globals.craze / (delta*2)) + 50
	print(Globals.craze)
	if Globals.craze >= 2.55:
		$OmniLight3D.light_energy = 2.55
		get_tree().quit()
