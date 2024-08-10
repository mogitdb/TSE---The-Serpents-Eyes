extends Panel

signal closed

func _ready():
	call_deferred("center_panel")
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size  # Assuming TextureRect is the main container
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()
