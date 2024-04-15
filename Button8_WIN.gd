extends MeshInstance3D
func interact():
	print("button")

	var winscreen = preload("res://scenes/win_screen.tscn").instantiate()
	get_parent().add_child(winscreen)
	await get_tree().create_timer(1.0).timeout
	get_tree().quit()
