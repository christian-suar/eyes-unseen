extends MeshInstance3D

var alt = false
func _process(delta):
	if alt:
		Globals.camera.attributes.exposure_multiplier +=.5
		Globals.camera.far -=.1
		Globals.camera.fov -=.1
		if Globals.camera.far < 0 or Globals.camera.fov == 0:
			var altscreen = preload("res://scenes/altending.tscn").instantiate()
			get_parent().add_child(altscreen)
			await get_tree().create_timer(3.0).timeout
			get_tree().quit()
			
func interact():
	if Globals.alternate == false:
		print("button")

		var winscreen = preload("res://scenes/win_screen.tscn").instantiate()
		get_parent().add_child(winscreen)
		await get_tree().create_timer(3.0).timeout
		get_tree().quit()
	elif Globals.alternate:
		alt = true
