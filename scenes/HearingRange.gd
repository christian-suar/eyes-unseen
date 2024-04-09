extends Area3D
var can_see = false

func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:

		if body == Globals.player:
			
			if Globals.losing_it or Globals.can_see==false:
				if Globals.in_area_2:

					Globals.craze += (.06 * delta)
				
	if Globals.can_see == false:
		Globals.losing_it = true


	
func _on_visible_on_screen_notifier_3d_screen_entered():
	Globals.can_see = true


func _on_visible_on_screen_notifier_3d_screen_exited():
	Globals.can_see = false
