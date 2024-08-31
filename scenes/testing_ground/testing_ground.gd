extends Control

enum DiceType {D4, D6, D8, D10, D12, D20, D30, D100}

@onready var log_label = $LogPanel/MarginContainer/ScrollContainer/LogLabel
@onready var dice_container = $DiceContainer/HBoxContainer

var dice_textures = {
	"ancient": preload("res://assets/buttons_dice/ancient_dice_placeholder.png"),
	"bio": preload("res://assets/buttons_dice/bio_110x110.png"),
	"magic": preload("res://assets/buttons_dice/magic_110x110.png"),
	"tech": preload("res://assets/buttons_dice/tech_110x110.png")
}

func _ready():
	randomize()  # Initialize random number generator
	populate_dice_loadout()

func populate_dice_loadout():
	var loadout = GameManager.get_dice_loadout()
	for dice in loadout:
		add_dice_to_container(dice)

func add_dice_to_container(dice):
	var container = VBoxContainer.new()
	container.size_flags_horizontal = Control.SIZE_EXPAND_FILL

	var texture_rect = TextureRect.new()
	texture_rect.texture = dice_textures[dice.type]
	texture_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	texture_rect.custom_minimum_size = Vector2(110, 110)
	container.add_child(texture_rect)

	var dice_label = Label.new()
	dice_label.text = "D" + str(dice.sides)
	dice_label.label_settings = preload("res://assets/fonts/orbitron_48_so.tres")
	dice_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	container.add_child(dice_label)

	var buttons = VBoxContainer.new()
	var roll_label = Label.new()
	roll_label.text = "Roll X"
	roll_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	buttons.add_child(roll_label)

	var button_container = HBoxContainer.new()
	for roll_count in [1, 10, 50, 100]:
		var button = Button.new()
		button.text = str(roll_count)
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		button.pressed.connect(_on_roll_button_pressed.bind("D" + str(dice.sides), roll_count))
		button_container.add_child(button)
	buttons.add_child(button_container)
	container.add_child(buttons)

	dice_container.add_child(container)

func _on_roll_button_pressed(dice_name: String, num_rolls: int):
	var dice_type = DiceType[dice_name]
	var results = roll_dice(dice_type, num_rolls)
	log_results(dice_name, results)

func roll_dice(dice_type: int, num_rolls: int) -> Array:
	var results = []
	var max_value = int(DiceType.keys()[dice_type].substr(1))
	for i in range(num_rolls):
		results.append(randi_range(1, max_value))
	return results

func log_results(dice_name: String, results: Array):
	var sum_result = results.reduce(func(accum, number): return accum + number)
	var avg_result = float(sum_result) / results.size()
	var sorted_results = results.duplicate()
	sorted_results.sort()
	var median_result = sorted_results[sorted_results.size() / 2] if sorted_results.size() % 2 != 0 else (sorted_results[sorted_results.size() / 2 - 1] + sorted_results[sorted_results.size() / 2]) / 2.0
	var lowest_result = sorted_results[0]
	var highest_result = sorted_results[-1]
	
	var log_text = "Rolled %s %s:\n" % [results.size(), dice_name]
	log_text += "Individual rolls:\n"
	for i in range(results.size()):
		log_text += "%d: %d\n" % [i+1, results[i]]
	log_text += "\nStatistics:\n"
	log_text += "Sum: %d\n" % sum_result
	log_text += "Average: %.2f\n" % avg_result
	log_text += "Median: %.1f\n" % median_result
	log_text += "Lowest: %d\n" % lowest_result
	log_text += "Highest: %d\n\n" % highest_result
	
	log_label.text = log_text + log_label.text
	if log_label.text.length() > 10000:  # Limit log size
		log_label.text = log_label.text.substr(0, 10000)
