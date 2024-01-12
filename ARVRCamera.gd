extends XRCamera3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# screen_metrics()
	# TODO - This code isn't needed. Archor does same thing but also isn't working correctly for VR it seems
	# var resolution = get_viewport().size
	# var screen_center = Vector2(resolution.x / 2, resolution.y / 2)
	# self.get_node("Reticle").set_global_position(screen_center)
	pass

func screen_metrics():
	print("                 [Screen Metrics]")
	print("            Display size: ", DisplayServer.screen_get_size())
	print("   Decorated Window size: ", get_window().get_size_with_decorations())
	print("             Window size: ", get_window().get_size())
	print("        Project Settings: Width=", ProjectSettings.get_setting("display/window/size/viewport_width"), " Height=", ProjectSettings.get_setting("display/window/size/viewport_height")) 
	print(get_window().get_size().x)
	print(get_window().get_size().y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
