extends CharacterBody3D

var speed
const SPRINT_SPEED = 9
const WALK_SPEED = 2.0
# const JUMP_VELOCITY = 4.5


var gravity = 9.8
var sensitivity = 0.004
# bob is short for bobble (camera bobble) 
# freq is how frequent the bobble happens
# amp is how much the camera moves (short for amplitude)
const bob_freq = 2.5
const bob_amp = 0.08
var t_bob = 0.0
var craze = 12


@onready var head = $head
@onready var head_camera = $head/Camera3D
@onready var can_see = false
@onready var fading_screen = $FadingScreen

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Globals.player = $"."
	
	

func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			rotate_y(-event.relative.x * sensitivity)
			head_camera.rotate_x(-event.relative.y * sensitivity)
			head_camera.rotation.x = clamp(head_camera.rotation.x, deg_to_rad(-60), deg_to_rad(60))
			
		
		
func _physics_process(delta):

	# click the escape button to show mouse again
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Input.is_action_just_pressed("left_click"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle jump.
	# if Input.is_action_just_pressed("jump") and is_on_floor():
		# velocity.y = JUMP_VELOCITY

	# Handle Sprint
	if Input.is_action_pressed("sprint"):
		speed = SPRINT_SPEED
	else:
		speed = WALK_SPEED
		
	# Get the input direction and handle the movement/deceleration.

	var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if is_on_floor():
		if direction:
			velocity.x = direction.x * speed
			velocity.z = direction.z * speed
		else:
			velocity.x = lerp(velocity.x, direction.x * speed, delta * 7.0)
			velocity.z = lerp(velocity.z, direction.z * speed, delta * 7.0)
	else:
		velocity.x = lerp(velocity.x, direction.x * speed, delta * 3.0)
		velocity.z = lerp(velocity.z, direction.z * speed, delta * 3.0)
		
		
		
		
	### SIGHT
	
	if Input.is_action_just_pressed("see"):
		fading_screen.visible = !fading_screen.visible
		Globals.canSee = !Globals.canSee
	
	

	
	#head bob
	t_bob += delta * velocity.length() * float(is_on_floor())
	head_camera.transform.origin = _headbob(t_bob)
	
	move_and_slide()
	
	#frames
	#print("Frames: " + str(Engine.get_frames_per_second()))
	
func _headbob(time) -> Vector3:
	var pos = Vector3.ZERO
	pos.y = sin(time * bob_freq) * bob_amp
	pos.x = cos(time * bob_freq/2) * bob_amp 
	return pos



### DETECT ENEMIES

func _on_timer_timeout():
	if Globals.canSee:
	
		var overlaps = $head/Camera3D/FOV.get_overlapping_bodies()
	#check if enemy is there or not by going through the overlaps

		for overlap in overlaps:

			if overlap.is_in_group("Statue"):
				
				var enemy_pos = overlap.global_position
				$VisionRayTest.look_at(Vector3(enemy_pos.x,enemy_pos.y+9,enemy_pos.z),Vector3.UP)
				$VisionRayTest.force_raycast_update()
				
				if $VisionRayTest.is_colliding():
					
					var collider = $VisionRayTest.get_collider()
					if collider.is_in_group("Statue"):
						print("i see")
						Globals.losing_it = false
					else:
						print("i dont")
						Globals.losing_it = true



