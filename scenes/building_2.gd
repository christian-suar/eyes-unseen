extends Node3D


@onready var physicalBuilding = $CSGBox3D2


#func _on_area_3d_body_entered(body):
	#if body.is_in_group("Player"):
		#print("player detected")

func interact():
	print("intereacted with !!!!!!!!!!!!!!!!!1111")
	Globals.player.position = Vector3(42,1,0)
	Globals.in_area_2 = false
