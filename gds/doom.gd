extends Control

func _process(delta):
	$ColorRect.color.a = Globals.craze 
	#print(Globals.craze)
	if Globals.enemies_in_area and Globals.canSee:
		if $ColorRect.color.a > 2.2:
			get_tree().quit()
	elif Globals.in_area_2:
		if $ColorRect.color.a > 1.1:
			get_tree().quit()


