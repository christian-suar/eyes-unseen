extends MeshInstance3D
func interact():
	print("button")
	Globals.area3Done = true
	Globals.player.position = Vector3(0,1,0)
