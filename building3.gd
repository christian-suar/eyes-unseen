extends Node3D


@onready var physicalBuilding = $CSGBox3D2

@onready var player = Globals.player
#func _on_area_3d_body_entered(body):
	#if body.is_in_group("Player"):
		#print("player detected")

func interact():
	Globals.player.position = Vector3(-122,1,0)
