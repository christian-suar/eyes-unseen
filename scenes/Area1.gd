extends Node3D

@onready var area2 = $"../Area2"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.in_area_2:
		$Area1NavRegion.enabled = false
		visible = false
		if is_instance_valid(area2):
			area2.visible = true
	else:
		$Area1NavRegion.enabled = true
		visible = true
		if is_instance_valid(area2):
			area2.visible = false
