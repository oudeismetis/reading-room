extends Spatial


# Called when the node enters the scene tree for the first time.
func _ready():
	# get_node("MeshInstance/Area").connect("input_event", self, "_cube_clicked")
	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	# print("Inside event")
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			print("Cube has been clicked!")
