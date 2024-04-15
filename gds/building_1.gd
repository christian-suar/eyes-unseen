extends Node3D


@onready var physicalBuilding = $CSGBox3D2

@onready var player = Globals.player
#func _on_area_3d_body_entered(body):
	#if body.is_in_group("Player"):
		#print("player detected")

func interact():
	print("intereacted with !!!!!!!!!!!!!!!!!1111")
	Globals.player.global_position = Vector3(76,1,0)
	Globals.in_area_2 = true
	Globals.in_area_with_enemies = false
	#print(Globals.player.global_position)
