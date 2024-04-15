extends Area3D

func _process(delta):
	var overlaps = $".".get_overlapping_bodies()
	for body in overlaps:
		if body == Globals.player:
			Globals.losing_it = false

