extends ARVROrigin


# Called when the node enters the scene tree for the first time.
func _ready():
	var vr = ARVRServer.find_interface("Native mobile")
	if vr and vr.initialize():
		get_viewport().arvr = true
	# OS.vsync_enabled = false
	# Engine.target_fps = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
