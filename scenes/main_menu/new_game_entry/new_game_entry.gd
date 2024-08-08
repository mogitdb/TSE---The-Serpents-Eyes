extends Panel

signal start_new_game(player_name)

@onready var start_button = $TextureRect/MarginContainer/VBoxContainer/StartButton
@onready var name_input = $TextureRect/MarginContainer/VBoxContainer/LineEdit
@onready var close_button = $CloseButton

func _ready():
	start_button.pressed.connect(on_start_pressed)
	close_button.pressed.connect(on_close_pressed)
	call_deferred("center_panel")

func on_start_pressed():
	var player_name = name_input.text.strip_edges()
	if player_name:
		emit_signal("start_new_game", player_name)
	else:
		print("Please enter a name")

func on_close_pressed():
	queue_free()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size  # Assuming TextureRect is the main container
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
