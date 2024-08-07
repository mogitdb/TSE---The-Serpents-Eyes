extends Node

@onready var new_game = $GameArea/MainContainer/MenuMargin/ButtonContainer/NewGame
@onready var load_game = $GameArea/MainContainer/MenuMargin/ButtonContainer/LoadGame
@onready var settings = $GameArea/MainContainer/MenuMargin/ButtonContainer/Settings
@onready var discord_button = $GameArea/MainContainer/MenuMargin/ButtonContainer/Discord

var newgame_scene = preload("res://scenes/main_menu/newgame_scene/newgame_scene.tscn")
var loadgame_scene = preload("res://scenes/main_menu/loadgame_scene/loadgame_scene.tscn")
var settings_scene = preload("res://scenes/main_menu/settings_scene/settings_scene.tscn")

var current_popup = null

func _ready():
	new_game.pressed.connect(on_new_game_pressed)
	load_game.pressed.connect(on_load_game_pressed)
	settings.pressed.connect(on_settings_pressed)
	discord_button.pressed.connect(open_discord_link)

func on_new_game_pressed():
	show_popup(newgame_scene)

func on_load_game_pressed():
	show_popup(loadgame_scene)

func on_settings_pressed():
	show_popup(settings_scene)

func open_discord_link():
	OS.shell_open("https://discord.gg/totalitylore")

func show_popup(scene_resource):
	if current_popup:
		current_popup.queue_free()
	current_popup = scene_resource.instantiate()
	add_child(current_popup)
	current_popup.connect("close_popup", Callable(self, "on_popup_closed"))
	if current_popup.has_signal("start_new_game"):
		current_popup.connect("start_new_game", Callable(self, "on_start_new_game"))

func on_popup_closed():
	current_popup = null

func on_start_new_game(save_slot, player_name):
	print("Starting new game with name: ", player_name, " in slot: ", save_slot)
	# Here you would typically save the game and transition to your first game scene
	# For now, we'll just close the popup
	on_popup_closed()
