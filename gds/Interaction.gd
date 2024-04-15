extends RayCast3D
var canInteract = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	add_exception($"../../..")
func _process(delta):
	var coll = get_collider()

	if is_colliding():
		coll = get_collider()

		#print(coll)
		if is_instance_valid(coll):
			if coll.is_in_group("Interactable"):
				
				#print("is in group")
				$InteractUI.visible = true
				if Input.is_action_just_pressed("Interact") and is_instance_valid(coll):
					
					coll.get_parent().interact()

				
			else:
				$InteractUI.visible = false
		else: 
			$InteractUI.visible = false
	else: 
			$InteractUI.visible = false
