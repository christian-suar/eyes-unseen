extends Node3D
@onready var button2 = $"."
func interact():
	print("button 2")
	Globals.area2Button2 = true
	if is_instance_valid(button2):
		button2.queue_free() 
	else:
		print("yeah im the problem ")
