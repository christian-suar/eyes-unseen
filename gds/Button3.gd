extends MeshInstance3D

func interact():
	print("button")
	Globals.area2Button3 = true
	if is_instance_valid($".."):
		$"..".queue_free() 
	else:
		print("yeah im the problem ")
	print("giS")


