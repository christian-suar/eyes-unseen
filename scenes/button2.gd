extends Node3D


func interact():
	print("button 2")
	Globals.area2Button2 = true
	if is_instance_valid($"."):
		queue_free() 
	else:
		print("yeah im the problem ")
