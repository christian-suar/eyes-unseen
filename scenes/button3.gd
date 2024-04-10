extends Node3D


func interact():
	print("button 3")
	Globals.area2Button3 = true
	if is_instance_valid($"."):
		queue_free() 
	else:
		print("yeah im the problem ")
