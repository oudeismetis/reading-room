extends Node3D


func _ready():
	$MeshInstance3D/Area3D.connect("input_event", Callable(self, "_on_Area_input_event"))

func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	print("Book is being looked at")
	$Sprite3D/PageText/Label.text = "WOOOOOOOO!!!!!!!"
