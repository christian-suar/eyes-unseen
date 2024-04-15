extends Node3D
var finish1 = true
@onready var winbutton = preload("res://scenes/WINNERBUTTON.tscn")
@onready var area2 = $"../Area2"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.in_area_2:
		$Area1NavRegion.enabled = false
		visible = false
		if is_instance_valid(area2):
			area2.visible = true
	else:
		$Area1NavRegion.enabled = true
		visible = true
		if is_instance_valid(area2):
			area2.visible = false
	if Globals.area3Done and Globals.area2Done and finish1:
		var winner = winbutton.instantiate()
		winner.position = Vector3(0,0,5)
		get_parent().add_child(winner)
		finish1 = false
		await get_tree().create_timer(5.0).timeout
		winner.alternate()
		finish1 = false

