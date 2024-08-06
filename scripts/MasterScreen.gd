extends Node

@onready var new_game = $GameArea/MainContainer/MenuMargin/ButtonContainer/NewGame
@onready var load_game = $GameArea/MainContainer/MenuMargin/ButtonContainer/LoadGame
@onready var settings = $GameArea/MainContainer/MenuMargin/ButtonContainer/Settings
@onready var discord = $GameArea/MainContainer/MenuMargin/ButtonContainer/Discord

var popup_scene = preload("res://scenes/popup_scene/popup_scene.tscn")
var current_popup = null

func _ready():
	new_game.pressed.connect(on_new_game_pressed)
	load_game.pressed.connect(on_load_game_pressed)
	settings.pressed.connect(on_settings_pressed)
	discord.pressed.connect(on_discord_pressed)

func on_new_game_pressed():
	print("New Game button pressed")

func on_load_game_pressed():
	print("Load Game button pressed")

func on_settings_pressed():
	show_popup("Settings")

func on_discord_pressed():
	print("Discord button pressed")

func show_popup(title: String):
	if current_popup:
		current_popup.queue_free()
	current_popup = popup_scene.instantiate()
	add_child(current_popup)
	var title_label = current_popup.find_child("TitleLabel")
	if title_label:
		title_label.text = title
	var close_button = current_popup.find_child("CloseButton")
	if close_button:
		close_button.pressed.connect(close_popup)

func close_popup():
	if current_popup:
		current_popup.queue_free()
		current_popup = null
