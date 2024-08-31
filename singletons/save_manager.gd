extends Node

const SAVE_FILE_PATH = "user://save_data.json"
var save_data = {}

func _ready():
	load_save_data()

func load_save_data():
	if FileAccess.file_exists(SAVE_FILE_PATH):
		var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.READ)
		var json = JSON.new()
		var parse_result = json.parse(file.get_as_text())
		if parse_result == OK:
			save_data = json.get_data()
		file.close()
	else:
		save_data = {
			"slots": {
				"1": {"name": "", "playtime": 0, "starter_dice": "", "dice_loadouts": [[], [], []]},
				"2": {"name": "", "playtime": 0, "starter_dice": "", "dice_loadouts": [[], [], []]},
				"3": {"name": "", "playtime": 0, "starter_dice": "", "dice_loadouts": [[], [], []]},
				"4": {"name": "", "playtime": 0, "starter_dice": "", "dice_loadouts": [[], [], []]},
				"5": {"name": "", "playtime": 0, "starter_dice": "", "dice_loadouts": [[], [], []]}
			}
		}

func save_game(slot):
	var game_data = GameManager.get_save_data()
	save_data["slots"][str(slot)] = {
		"name": game_data["name"],
		"playtime": 0,  # You might want to track this separately
		"starter_dice": game_data["starter_dice"],
		"dice_loadouts": game_data["dice_loadouts"],
		"current_loadout": game_data["current_loadout"]
	}
	write_save_data()

func write_save_data():
	var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.WRITE)
	file.store_string(JSON.stringify(save_data))
	file.close()

func get_save_data(slot):
	return save_data["slots"][str(slot)]

func has_save_data(slot):
	return save_data["slots"][str(slot)]["name"] != ""

func delete_save(slot):
	save_data["slots"][str(slot)] = {
		"name": "",
		"playtime": 0,
		"starter_dice": "",
		"dice_loadouts": [[], [], []],
		"current_loadout": 0
	}
	write_save_data()

func load_game(slot):
	if has_save_data(slot):
		var slot_data = get_save_data(slot)
		GameManager.load_save_data(slot_data)
		return true
	return false
