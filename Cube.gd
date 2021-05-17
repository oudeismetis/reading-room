extends Spatial

var is_green = true

func _ready():
	$MeshInstance/Area.connect("input_event", self, "_on_Area_input_event")

func _get_toggled_color():
	is_green = !is_green
	var green = Color(0, 1, 0, 1.0)
	var red = Color(1, 0, 0, 1.0)
	return green if is_green else red

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed == true:
		print("Cube has been clicked!")
		self.get_node("MeshInstance").get_active_material(0).albedo_color = _get_toggled_color()
