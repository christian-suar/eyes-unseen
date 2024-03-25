extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/VBoxContainer/CheckButton.button_pressed = Globals.enabled


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_resume_button_pressed():
	$".".queue_free()
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_exit_button_pressed():
	get_tree().quit()


func _on_check_button_toggled(toggled_on):
	Globals.enabled = toggled_on
