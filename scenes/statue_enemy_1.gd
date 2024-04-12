extends StaticBody3D

#
#@onready var player = Globals.player
#@onready var HearingRange = $HearingRange
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if  Globals.losing_it:
		#Globals.craze += (.02 * delta)
		#print(Globals.losing_it)
	#print(Globals.craze)
func _process(delta):
	if Globals.rush:
		visible = false
		$CollisionShape3D.disabled = true
		$ScaryOrbSound.playing = false

