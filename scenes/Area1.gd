extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.in_area_2:
		$Area1NavRegion.enabled = false
		$".".visible = false
		$"../Area2".visible = true
	else:
		$Area1NavRegion.enabled = true
		$".".visible = true
		if $"../Area2":
			$"../Area2".visible = false
