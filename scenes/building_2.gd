extends Node3D


@onready var physicalBuilding = $CSGBox3D2


#func _on_area_3d_body_entered(body):
	#if body.is_in_group("Player"):
		#print("player detected")

func interact():
	print("intereacted with !!!!!!!!!!!!!!!!!1111")
	Globals.player.position = Vector3(42,1,0)
	Globals.in_area_2 = false
	Globals.in_area_with_enemies = true
	Globals.craze = 0.0

func _process(delta):
	if Globals.area2Button1 and Globals.area2Button2 and Globals.area2Button3 and Globals.area2Button4:
		position = Vector3(118,1,0)
