extends Node3D
@onready var statue = $StatueEnemy1
func _process(delta):
	
	if Globals.area2Button1 and Globals.area2Button2 and Globals.area2Button3 and Globals.area2Button4:
		Globals.rush = true
		Globals.area2Done = true
		#var enemy = preload("res://scenes/enemy_1.tscn").instantiate()
		if Globals.in_area_2 == false and Globals.area2Done:
			$"../Area1/Area1NavRegion/building1".queue_free() 
			queue_free()
			
