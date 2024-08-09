extends Panel

signal start_new_game(player_name)

@onready var start_button = $TextureRect/MarginContainer/VBoxContainer/StartButton
@onready var name_input = $TextureRect/MarginContainer/VBoxContainer/LineEdit
@onready var close_button = $CloseButton

const MAX_NAME_LENGTH = 13

func _ready():
	start_button.pressed.connect(on_start_pressed)
	close_button.pressed.connect(on_close_pressed)
	name_input.text_changed.connect(on_name_changed)
	call_deferred("center_panel")

func on_start_pressed():
	var player_name = name_input.text.strip_edges()
	if player_name:
		emit_signal("start_new_game", player_name)
	else:
		print("Please enter a name")

func on_close_pressed():
	queue_free()

func on_name_changed(new_text):
	if new_text.length() > MAX_NAME_LENGTH:
		name_input.text = new_text.substr(0, MAX_NAME_LENGTH)
		name_input.caret_column = MAX_NAME_LENGTH

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size  # Assuming TextureRect is the main container
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
