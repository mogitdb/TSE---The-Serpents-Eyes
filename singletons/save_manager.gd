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
				"1": {"name": "", "playtime": 0},
				"2": {"name": "", "playtime": 0},
				"3": {"name": "", "playtime": 0},
				"4": {"name": "", "playtime": 0},
				"5": {"name": "", "playtime": 0}
			}
		}

func save_game(slot, player_name):
	save_data["slots"][str(slot)] = {
		"name": player_name,
		"playtime": 0
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
