extends Panel

signal close_popup
signal load_game(save_slot)

@onready var close_button = $CloseButton
@onready var save_slots_container = $MarginContainer/VBoxContainer

func _ready():
	close_button.pressed.connect(on_close_pressed)
	setup_save_slots()
	call_deferred("center_panel")

func setup_save_slots():
	for i in range(1, 6):
		var save_slot = save_slots_container.get_node("SaveSlot" + str(i))
		if save_slot:
			save_slot.pressed.connect(on_load_game.bind(i))
			update_save_slot_display(i)
		else:
			print("WARNING: SaveSlot" + str(i) + " not found")

func update_save_slot_display(slot):
	var save_slot_button = save_slots_container.get_node("SaveSlot" + str(slot))
	if save_slot_button:
		var label = save_slot_button.get_node("Label")
		if label:
			var slot_data = SaveManager.get_save_data(slot)
			if slot_data["name"] != "":
				label.text = slot_data["name"]
			else:
				label.text = "Empty Slot"
		else:
			print("WARNING: Label not found in SaveSlot" + str(slot))
	else:
		print("WARNING: SaveSlot" + str(slot) + " not found")

func on_load_game(slot):
	if SaveManager.has_save_data(slot):
		var save_data = SaveManager.load_game(slot)
		GameManager.set_game_data(slot, save_data["name"])
		GameManager.set_starter_dice(save_data["starter_dice"])
		if save_data["starter_dice"] != "":
			get_tree().change_scene_to_file("res://scenes/bedroom_scene/bedroom_scene.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/intro_scene/intro_scene.tscn")
	else:
		print("No save data in slot ", slot)

func on_close_pressed():
	emit_signal("close_popup")
	queue_free()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = get_size()
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
