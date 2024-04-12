extends Control

func _process(delta):
	$ColorRect.color.a = (Globals.craze)
	#print(Globals.craze)
	if $ColorRect.color.a > 1.1:
		get_tree().quit()
