extends Node

var current_save_slot: int = -1
var current_player_name: String = ""
var starter_dice: String = ""
var dice_loadouts: Array = [[], [], []]  # Three empty loadouts
var current_loadout: int = 0  # Index of the current active loadout

# Dictionary to store owned dice
var owned_dice: Dictionary = {
	"d4": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d6": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d8": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d10": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d12": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d20": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d30": {"ancient": false, "bio": false, "magic": false, "tech": false},
	"d100": {"ancient": false, "bio": false, "magic": false, "tech": false}
}

class DiceData:
	var sides: int = 6
	var type: String = "bio"
	var mastery_level: int = 0
	var mastery_points: int = 0
	var dice_level: int = 0
	var modifiers: Dictionary = {
		"passive_effect": {"tier": 0, "value": 0.0},
		"pre_roll_effect": {"tier": 0, "value": 0.0},
		"post_roll_effect": {"tier": 0, "value": 0.0},
		"flat_bonus": {"tier": 0, "value": 0.0},
		"multiplier_bonus": {"tier": 0, "value": 1.0},
		"critical_chance_bonus": {"tier": 0, "value": 0.0},
		"critical_damage_bonus": {"tier": 0, "value": 1.0}
	}
	var special_effect: Dictionary = {
		"effect_type": "",
		"description": ""
	}

	func to_dict() -> Dictionary:
		return {
			"sides": sides,
			"type": type,
			"mastery_level": mastery_level,
			"mastery_points": mastery_points,
			"dice_level": dice_level,
			"modifiers": modifiers,
			"special_effect": special_effect
		}

	static func from_dict(data: Dictionary) -> DiceData:
		var dice = DiceData.new()
		dice.sides = data["sides"]
		dice.type = data["type"]
		dice.mastery_level = data["mastery_level"]
		dice.mastery_points = data["mastery_points"]
		dice.dice_level = data["dice_level"]
		dice.modifiers = data["modifiers"]
		dice.special_effect = data["special_effect"]
		return dice

func set_game_data(save_slot: int, player_name: String):
	current_save_slot = save_slot
	current_player_name = player_name
	dice_loadouts = [[], [], []]  # Reset loadouts when setting new game data

func set_starter_dice(dice: String):
	starter_dice = dice
	# Initialize the starter dice in the first loadout
	var new_dice = DiceData.new()
	new_dice.type = dice
	dice_loadouts[0] = [new_dice]  # Replace the first loadout with only the new dice
	
	# Add the starter dice to the player's owned dice
	add_owned_dice("d6", dice)  # Assuming starter dice is always d6

func add_dice_to_loadout(dice: DiceData, loadout_index: int = current_loadout):
	if loadout_index >= 0 and loadout_index < 3 and dice_loadouts[loadout_index].size() < 7:
		dice_loadouts[loadout_index].append(dice)

func remove_dice_from_loadout(index: int, loadout_index: int = current_loadout):
	if loadout_index >= 0 and loadout_index < 3:
		if index >= 0 and index < dice_loadouts[loadout_index].size():
			dice_loadouts[loadout_index].remove_at(index)

func get_dice_loadout(loadout_index: int = current_loadout) -> Array:
	if loadout_index >= 0 and loadout_index < 3:
		return dice_loadouts[loadout_index]
	return []

func switch_loadout(loadout_index: int):
	if loadout_index >= 0 and loadout_index < 3:
		current_loadout = loadout_index

func reset_game_data():
	current_save_slot = -1
	current_player_name = ""
	starter_dice = ""
	dice_loadouts = [[], [], []]
	current_loadout = 0

func get_save_data() -> Dictionary:
	var loadouts_data = []
	for loadout in dice_loadouts:
		var loadout_data = []
		for dice in loadout:
			loadout_data.append(dice.to_dict())
		loadouts_data.append(loadout_data)
	
	return {
		"name": current_player_name,
		"starter_dice": starter_dice,
		"dice_loadouts": loadouts_data,
		"current_loadout": current_loadout,
		"owned_dice": owned_dice
	}

func load_save_data(data: Dictionary):
	current_player_name = data["name"]
	starter_dice = data["starter_dice"]
	current_loadout = data.get("current_loadout", 0)
	dice_loadouts = [[], [], []]
	for i in range(3):
		if i < data["dice_loadouts"].size():
			for dice_dict in data["dice_loadouts"][i]:
				dice_loadouts[i].append(DiceData.from_dict(dice_dict))
	owned_dice = data.get("owned_dice", owned_dice)  # Load owned dice, use default if not present

# Functions for managing owned dice
func add_owned_dice(sides: String, type: String):
	if sides in owned_dice and type in owned_dice[sides]:
		owned_dice[sides][type] = true

func remove_owned_dice(sides: String, type: String):
	if sides in owned_dice and type in owned_dice[sides]:
		owned_dice[sides][type] = false

func has_owned_dice(sides: String, type: String) -> bool:
	return owned_dice.get(sides, {}).get(type, false)

func get_owned_dice() -> Dictionary:
	return owned_dice
