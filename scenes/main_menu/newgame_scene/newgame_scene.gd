extends Panel

signal close_popup
signal start_new_game(save_slot, player_name)

var new_game_entry = preload("res://scenes/main_menu/new_game_entry/new_game_entry.tscn")

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
			save_slot.pressed.connect(open_new_game_entry.bind(i))
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

func open_new_game_entry(slot):
	var entry_panel = new_game_entry.instantiate()
	add_child(entry_panel)
	entry_panel.connect("start_new_game", Callable(self, "on_start_new_game").bind(slot))

func on_start_new_game(player_name, save_slot):
	SaveManager.save_game(save_slot, player_name)
	update_save_slot_display(save_slot)
	emit_signal("start_new_game", save_slot, player_name)
	queue_free()

func on_close_pressed():
	emit_signal("close_popup")
	queue_free()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = get_size()
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
