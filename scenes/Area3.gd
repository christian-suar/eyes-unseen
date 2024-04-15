extends Node3D

func _ready():
	$Area3NavRegion/LowPolyButton2.visible = false
	$Area3NavRegion/LowPolyButton3.visible = false
	$Area3NavRegion/LowPolyButton4.visible = false
	$Area3NavRegion/LowPolyButton5.visible = false
	$Area3NavRegion/LowPolyButton6.visible = false
	
func _process(delta):
	if Globals.area3Button1:
		if is_instance_valid($Area3NavRegion/LowPolyButton2):
			$Area3NavRegion/LowPolyButton2.visible = true
	if Globals.area3Button2:
		if is_instance_valid($Area3NavRegion/LowPolyButton3):
			$Area3NavRegion/LowPolyButton3.visible = true
	if Globals.area3Button3:
		if is_instance_valid($Area3NavRegion/LowPolyButton4):
			$Area3NavRegion/LowPolyButton4.visible = true
	if Globals.area3Button4:
		if is_instance_valid($Area3NavRegion/LowPolyButton5):
			$Area3NavRegion/LowPolyButton5.visible = true
	if Globals.area3Button5:
		if is_instance_valid($Area3NavRegion/LowPolyButton6):
			$Area3NavRegion/LowPolyButton6.visible = true
	if Globals.area3Button6:
		
			$Area3NavRegion/LowPolyButton7.position = Vector3(0,-.75,0)
	if Globals.area3Done:
		if is_instance_valid($"../Area1/Area1NavRegion/building3"):
			$"../Area1/Area1NavRegion/building3".queue_free()
		queue_free()
