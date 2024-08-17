extends Node2D

var sample_materials = [
	{"name": "Ruby", "icon": preload("res://assets/buttons_dice/magic_110x110.png"), "description": "A precious gemstone that enhances magical abilities."},
	{"name": "Sapphire", "icon": preload("res://assets/buttons_dice/tech_110x110.png"), "description": "A rare blue gem that boosts technological prowess."},
	{"name": "Emerald", "icon": preload("res://assets/buttons_dice/bio_110x110.png"), "description": "A verdant stone that amplifies biological powers."},
	{"name": "Diamond", "icon": preload("res://assets/buttons_dice/school_110x110_placeholder.png"), "description": "The hardest known substance, it enhances all attributes."},
	{"name": "Gold", "icon": preload("res://assets/buttons_dice/tech_110x110.png"), "description": "A valuable metal used in crafting high-tier items."}
]

var sample_unlocks = [
	"New Dice: d10",
	"New Gem: Topaz",
	"New Arena: Tech Lab",
	"New Character: Dr. Quantum",
	"New Skill: Time Warp",
	"New Equipment: Quantum Gauntlet",
	"New Mission: Temporal Paradox"
]

var battle_result = 1000  # Positive for win, negative for loss

func _ready():
	# Set earnings
	var money_earned = $Panel/MarginContainer/VBoxContainer/Earnings/MarginContainer/VBoxContainer/MoneyEarned
	var new_settings = money_earned.label_settings.duplicate()
	money_earned.text = "$" + str(abs(battle_result))
	if battle_result >= 0:
		new_settings.font_color = Color.GREEN
	else:
		new_settings.font_color = Color.RED
		money_earned.text = "-" + money_earned.text
	money_earned.label_settings = new_settings

	# Populate materials grid
	var grid = $Panel/MarginContainer/VBoxContainer/MaterialsGained/MarginContainer/VBoxContainer/GridContainer
	for mat in sample_materials:
		var item = TextureRect.new()
		item.texture = mat["icon"]
		item.custom_minimum_size = Vector2(50, 50)
		item.expand_mode = TextureRect.EXPAND_KEEP_SIZE
		item.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		item.tooltip_text = mat["name"] + ": " + mat["description"]
		grid.add_child(item)
	
	# Populate unlocks
	var unlocks_container = $Panel/MarginContainer/VBoxContainer/Unlocks/MarginContainer/VBoxContainer/ScrollContainer/VBoxContainer
	for unlock in sample_unlocks:
		var label = Label.new()
		label.text = unlock
		label.label_settings = load("res://assets/fonts/orbitron_16_so.tres")
		unlocks_container.add_child(label)

func _on_next_button_pressed():
	get_tree().change_scene_to_file("res://scenes/bedroom_scene/bedroom_scene.tscn")
