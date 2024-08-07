extends Panel

signal close_popup
signal start_new_game(save_slot, player_name)

var new_game_entry = preload("res://scenes/main_menu/new_game_entry/new_game_entry.tscn")

@onready var close_button = $CloseButton

func _ready():
	close_button.pressed.connect(on_close_pressed)
	for i in range(1, 6):
		var save_slot = get_node("TextureRect/MarginContainer/VBoxContainer/SaveSlot" + str(i))
		if save_slot:
			save_slot.pressed.connect(open_new_game_entry.bind(i))
		else:
			print("SaveSlot" + str(i) + " not found")
	call_deferred("center_panel")

func open_new_game_entry(slot):
	var entry_panel = new_game_entry.instantiate()
	add_child(entry_panel)
	entry_panel.connect("start_new_game", Callable(self, "on_start_new_game").bind(slot))

func on_start_new_game(player_name, save_slot):
	emit_signal("start_new_game", save_slot, player_name)
	queue_free()

func on_close_pressed():
	emit_signal("close_popup")
	queue_free()

func center_panel():
	var screen_size = get_viewport_rect().size
	var panel_size = get_size()
	var centered_position = (screen_size - panel_size) / 2
	set_global_position(centered_position)
