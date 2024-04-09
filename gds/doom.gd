extends Control

func _process(delta):
	$ColorRect.color.a = Globals.craze * delta
	if Globals.craze > 1.5:
		get_tree().quit()
