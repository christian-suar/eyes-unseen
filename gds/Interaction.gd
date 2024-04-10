extends RayCast3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	add_exception($"../../..")
func _process(delta):
	var coll = get_collider()

	if self.is_colliding():
		coll = get_collider()

		#print(coll)
		if coll.is_in_group("Interactable"):
			#print("is in group")
			$InteractUI.visible = true
			if Input.is_action_just_pressed("Interact"):
				coll.get_parent().interact()
	
		else:
			$InteractUI.visible = false
	else: 
		$InteractUI.visible = false
