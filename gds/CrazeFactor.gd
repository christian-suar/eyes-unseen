extends Area3D
var dist = 0
func _process(delta):
	if Globals.in_area_with_enemies:
		var bodies = get_overlapping_bodies()
		#print(Globals.craze)
		for body in bodies:
			if body == Globals.player:
				Globals.losing_it = true
				Globals.craze += 0.01

				#dist = dist - crazeFactorsss
				#print(dist)
			else:
				Globals.losing_it = false


func _on_body_entered(body):
	if body == Globals.player:
		Globals.enemies_in_area = true
		


func _on_body_exited(body):
	if body == Globals.player:
		Globals.enemies_in_area = false
