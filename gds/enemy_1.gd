extends CharacterBody3D

@onready var nav_agent = $NavigationAgent3D
var speed = 1.6
var gravity = 9.8
func _process(delta):
	if Globals.canSee:
		#current position - next location = velocity change towards new target
		var next_location = nav_agent.get_next_path_position()
		var current_location = global_position
		var new_velocity = (next_location - current_location).normalized() * speed
		rotation = new_velocity
		velocity = velocity.move_toward(new_velocity, .25)
		move_and_slide()
	else:
		pass
func update_target_location(target_location):
	nav_agent.target_position = target_location

	
	
	
