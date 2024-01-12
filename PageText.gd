@tool
extends SubViewport


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "This is dynamic text"

func _process(delta):
	size = $Label.size
