extends Node3D
func alternate():
	$AudioStreamPlayer3D.play()
	Globals.alternate = true
