extends Node3D
func _process(delta):
	if Globals.area2Button1 and Globals.area2Button2 and Globals.area2Button3:
		Globals.rush = true
		if Globals.in_area_2 == false:
			$"../Area1/Area1NavRegion/building1".queue_free() 
			self.queue_free()
