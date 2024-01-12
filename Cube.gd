extends Node3D

var is_blue = true

func _ready():
	$MeshInstance3D/Area3D.connect("input_event", Callable(self, "_on_Area_input_event"))

func _get_toggled_color():
	is_blue = !is_blue
	var blue = Color(0, 0, 1, 1.0)
	var red = Color(1, 0, 0, 1.0)
	return blue if is_blue else red

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.button_pressed == true:
		print("Cube has been clicked!")
		self.get_node("MeshInstance3D").get_active_material(0).albedo_color = _get_toggled_color()
