extends Node3D
@onready var button = $"."
func interact():
	print("button")
	Globals.area2Button2 = true
	if is_instance_valid(button):
		button.queue_free() 
	else:
		print("yeah im the problem ")



