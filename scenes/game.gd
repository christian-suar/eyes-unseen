extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("ui_cancel"):

		# Toggle pause mode when the user presses the pause key (e.g., Esc)
		_toggle_pause_menu(show)
		get_tree().paused = !get_tree().paused
		


func _toggle_pause_menu(show):

	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	if show:
		var pause_menu = preload("res://scenes/pause_menu.tscn").instantiate()
		get_parent().add_child(pause_menu)
		
	else:
		# Remove the pause menu 
		var exists = get_node("PauseMenu")
		if exists:
			exists.queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
