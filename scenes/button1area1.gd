extends Node3D

func interact():
	print("buttpon 1 ")
	Globals.area2Button1 = true
	if is_instance_valid($"."):
		queue_free() 
	else:
		print("yeah im the problem ")
