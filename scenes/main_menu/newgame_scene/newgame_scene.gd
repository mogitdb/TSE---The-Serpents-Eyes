extends Panel

signal close_popup
signal start_new_game(save_slot, player_name)

var new_game_entry = preload("res://scenes/main_menu/new_game_entry/new_game_entry.tscn")
var delete_confirmation = preload("res://scenes/main_menu/delete_confirmation/delete_confirmation.tscn")

@onready var close_button = $CloseButton
@onready var save_slots_container = $MarginContainer/VBoxContainer

func _ready():
	close_button.pressed.connect(on_close_pressed)
	setup_save_slots()
	call_deferred("center_panel")

func setup_save_slots():
	for i in range(1, 6):
		var save_slot = save_slots_container.get_node("SaveSlot" + str(i))
		var delete_button = save_slot.get_node("DeleteButton" + str(i))
		if save_slot and delete_button:
			update_save_slot_display(i)
			if not SaveManager.has_save_data(i):
				save_slot.pressed.connect(open_new_game_entry.bind(i))
				delete_button.hide()
			else:
				save_slot.disabled = true
				delete_button.show()
				delete_button.pressed.connect(confirm_delete_save.bind(i))
			
			# Set up button textures
			delete_button.texture_normal = load("res://assets/images/delete_icon/delete_icon_150x150.png")
			delete_button.texture_hover = load("res://assets/images/delete_icon/delete_icon_150x150_hover.png")
			delete_button.texture_pressed = load("res://assets/images/delete_icon/delete_icon_150x150_pressed.png")
			
			delete_button.ignore_texture_size = true
			delete_button.stretch_mode = TextureButton.STRETCH_KEEP_ASPECT_CENTERED
			
			delete_button.custom_minimum_size = Vector2(50, 50)
		else:
			print("WARNING: SaveSlot" + str(i) + " or DeleteButton" + str(i) + " not found")

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

func confirm_delete_save(slot):
	var confirm_dialog = delete_confirmation.instantiate()
	add_child(confirm_dialog)
	confirm_dialog.get_node("TextureRect/MarginContainer/VBoxContainer/StartButton").pressed.connect(delete_save.bind(slot))
	confirm_dialog.get_node("CloseButton").pressed.connect(confirm_dialog.queue_free)
	confirm_dialog.center_panel()

func delete_save(slot):
	SaveManager.delete_save(slot)
	update_save_slot_display(slot)
	var save_slot = save_slots_container.get_node("SaveSlot" + str(slot))
	var delete_button = save_slot.get_node("DeleteButton" + str(slot))
	if save_slot and delete_button:
		save_slot.disabled = false
		save_slot.pressed.connect(open_new_game_entry.bind(slot))
		delete_button.hide()
	
	var confirm_dialog = get_node_or_null("Panel")
	if confirm_dialog:
		confirm_dialog.queue_free()

func open_new_game_entry(slot):
	var entry_panel = new_game_entry.instantiate()
	add_child(entry_panel)
	entry_panel.connect("start_new_game", Callable(self, "on_start_new_game").bind(slot))

func on_start_new_game(player_name, save_slot):
	GameManager.set_game_data(save_slot, player_name)
	GameManager.set_starter_dice("")  # This will be set later in the intro scene
	SaveManager.save_game(save_slot)
	get_tree().change_scene_to_file("res://scenes/intro_scene/intro_scene.tscn")

func on_close_pressed():
	emit_signal("close_popup")
	queue_free()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = get_size()
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
