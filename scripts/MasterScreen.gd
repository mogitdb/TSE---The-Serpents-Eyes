extends CanvasLayer

@onready var new_game_button = $GameArea/MainContainer/MenuMargin/MenuPanel/MenuOptions/NewGameButton
@onready var load_game_button = $GameArea/MainContainer/MenuMargin/MenuPanel/MenuOptions/LoadGameButton
@onready var settings_button = $GameArea/MainContainer/MenuMargin/MenuPanel/MenuOptions/SettingsButton
@onready var discord_button = $GameArea/MainContainer/MenuMargin/MenuPanel/MenuOptions/DiscordButton

# Screens (to be instanced)
var new_game_screen: PackedScene = preload("res://scenes/new_game/new_game.tscn")
var load_game_screen: PackedScene = preload("res://scenes/load_game/load_game.tscn")
var settings_screen: PackedScene = preload("res://scenes/settings_screen/settings_screen.tscn")
var discord_screen: PackedScene = preload("res://scenes/discord_screen/discord_screen.tscn")

# Current active screen
var current_screen: Control = null

func _ready():
	# Connect button signals
	new_game_button.pressed.connect(_on_new_game_pressed)
	load_game_button.pressed.connect(_on_load_game_pressed)
	settings_button.pressed.connect(_on_settings_pressed)
	discord_button.pressed.connect(_on_discord_pressed)
	
	# Initialize game state
	GameKaren.initialize()

	# Set up fonts
	_setup_fonts()

func _setup_fonts():
	var regular_font = load("res://resources/fonts/OrbitronRegular.tres")
	var bold_font = load("res://resources/fonts/OrbitronBold.tres")
	
	for button in [new_game_button, load_game_button, settings_button, discord_button]:
		button.add_theme_font_override("font", regular_font)
		button.add_theme_font_size_override("font_size", 24)

func _on_new_game_pressed():
	_change_screen(new_game_screen)

func _on_load_game_pressed():
	_change_screen(load_game_screen)

func _on_settings_pressed():
	_change_screen(settings_screen)

func _on_discord_pressed():
	_change_screen(discord_screen)

func _change_screen(screen_scene: PackedScene):
	if current_screen:
		current_screen.queue_free()
	
	current_screen = screen_scene.instantiate()
	$GameArea/MainContainer.add_child(current_screen)
	move_child(current_screen, 1)  # Move it just after the TitleImage

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		if current_screen:
			current_screen.queue_free()
			current_screen = null
		else:
			get_tree().quit()
