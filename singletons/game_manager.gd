extends Node

var current_save_slot: int = -1
var current_player_name: String = ""
var starter_dice: String = ""

func set_game_data(save_slot: int, player_name: String):
	current_save_slot = save_slot
	current_player_name = player_name

func set_starter_dice(dice: String):
	starter_dice = dice

func reset_game_data():
	current_save_slot = -1
	current_player_name = ""
	starter_dice = ""
