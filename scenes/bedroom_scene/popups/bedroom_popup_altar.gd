extends Panel

signal closed

var current_loadout_index: int = 0

func _ready():
	call_deferred("center_panel")
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))
	$MarginContainer/VBoxContainer/HBoxContainer2/Control/TextureButton2.connect("pressed", Callable(self, "_on_NextButton_pressed"))
	update_loadout_display()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size  # Assuming TextureRect is the main container
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()

func _on_NextButton_pressed():
	current_loadout_index = (current_loadout_index + 1) % 3
	update_loadout_display()

func update_loadout_display():
	# Update the kit number
	$MarginContainer/VBoxContainer/HBoxContainer2/Control/Label2.text = "KIT #" + str(current_loadout_index + 1)
	
	# Get the current loadout
	var loadout = GameManager.get_dice_loadout(current_loadout_index)
	
	# Update dice slot displays
	for i in range(7):
		var slot = get_node("MarginContainer/VBoxContainer/HBoxContainer" + str(i / 3 + 1) + "/DiceSlot" + str(i + 1))
		if slot:
			if i < loadout.size():
				# Display dice info (you might want to add a texture or label to show dice type/sides)
				slot.visible = true
			else:
				# Empty slot
				slot.visible = false
	
	# Update the current loadout in GameManager
	GameManager.switch_loadout(current_loadout_index)
