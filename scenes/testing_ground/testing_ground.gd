extends Control

enum DiceType {D4, D6, D8, D10, D12, D20, D30, D100}

@onready var log_label = $LogPanel/MarginContainer/ScrollContainer/LogLabel

func _ready():
	randomize()  # Initialize random number generator
	for dice_container in $DiceContainer/HBoxContainer.get_children():
		var dice_name = dice_container.name.substr(0, dice_container.name.length() - 9)
		var buttons = dice_container.get_node(dice_name + "Buttons")
		for button in buttons.get_children():
			button.connect("pressed", Callable(self, "_on_roll_button_pressed").bind(dice_name, int(button.text)))

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
