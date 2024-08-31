extends Panel

signal closed

func _ready():
	call_deferred("center_panel")
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))
	$MarginContainer/VBoxContainer/DiceSimulator.connect("pressed", Callable(self, "_on_DiceSimulatorButton_pressed"))

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size  # Assuming TextureRect is the main container
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()

func _on_DiceSimulatorButton_pressed():
	# Load and instance the testing ground scene
	var testing_ground_scene = load("res://scenes/testing_ground/testing_ground.tscn")
	var testing_ground_instance = testing_ground_scene.instantiate()
	
	# Add the testing ground to the current scene tree
	get_tree().root.add_child(testing_ground_instance)
	
	# Set the testing ground as the current scene
	get_tree().current_scene = testing_ground_instance
	
	# Close the computer popup
	_on_CloseButton_pressed()
