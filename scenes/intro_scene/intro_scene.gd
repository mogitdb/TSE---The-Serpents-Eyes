extends Node2D

@onready var dialogue_text = $Background/TextureRect/MarginContainer/DialogueText
@onready var next_button = $Background/TextureRect/MarginContainer/TextureButton

var dialogue = [
	"In a world where ancient myths have become the latest craze...",
	"A game of dice has captured the imagination of millions.",
	"But behind this seemingly innocent pastime...",
	"Lies a history forgotten by time, waiting to be uncovered.",
	"As you drift off to sleep, a vivid dream takes hold...",
	"A dream of choosing your first die, your faithful companion.",
	"Little do you know, this dream is more than it seems...",
	"A premonition of the adventure that awaits you.",
	"Welcome to the world of The Serpent's Eyes.",
	"Your journey begins now."
]

var current_dialogue = 0
var dialogue_finished = false

func _ready():
	dialogue_text.text = ""
	next_button.hide()
	next_button.pressed.connect(next_dialogue)
	display_dialogue()

func display_dialogue():
	dialogue_finished = false
	dialogue_text.text = ""
	next_button.hide()
	
	if current_dialogue < dialogue.size():
		var tween = create_tween()
		tween.tween_method(set_partial_text, 0, dialogue[current_dialogue].length(), 2.0)
		tween.tween_callback(on_dialogue_finished)
	else:
		print("Dialogue completed")
		# Handle end of dialogue here

func set_partial_text(length: int):
	if current_dialogue < dialogue.size():
		dialogue_text.text = dialogue[current_dialogue].substr(0, length)

func on_dialogue_finished():
	dialogue_finished = true
	next_button.show()

func next_dialogue():
	if not dialogue_finished:
		# If dialogue is still typing, complete it immediately
		if current_dialogue < dialogue.size():
			dialogue_text.text = dialogue[current_dialogue]
		on_dialogue_finished()
	else:
		current_dialogue += 1
		if current_dialogue < dialogue.size():
			display_dialogue()
		else:
			print("Transitioning to dice selection scene")
			# Uncomment the next line when you have the dice_selection scene ready
			# get_tree().change_scene_to_file("res://scenes/dice_selection.tscn")
