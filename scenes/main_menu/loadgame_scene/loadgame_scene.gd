extends Panel

@onready var close_button = $CloseButton
signal close_popup

func _ready():
	# Connect the close button's pressed signal to the close function
	close_button.pressed.connect(self.close)
	
	# Wait for the next frame to ensure the popup has its correct size
	call_deferred("center_popup")

func center_popup():
	# Get the size of the viewport (screen)
	var screen_size = get_viewport_rect().size
	
	# Get the size of this popup
	var popup_size = Vector2(800, 800)  # Or whatever size your popup background is
	
	# Calculate the position to center the popup
	var centered_position = (screen_size - popup_size) / 2
	
	# Set the position of the popup
	set_global_position(centered_position)

func close():
	emit_signal("close_popup")
	queue_free()
