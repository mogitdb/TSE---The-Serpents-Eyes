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
var tween: Tween

func _ready():
	dialogue_text.text = ""
	next_button.show()  # Show the button from the start
	next_button.pressed.connect(next_dialogue)
	display_dialogue()

func display_dialogue():
	dialogue_finished = false
	dialogue_text.text = ""
	
	if current_dialogue < dialogue.size():
		tween = create_tween()
		tween.tween_method(set_partial_text, 0, dialogue[current_dialogue].length(), 1.0)  # Reduced from 2.0 to 1.0 for double speed
		tween.tween_callback(on_dialogue_finished)
	else:
		print("Dialogue completed")
		get_tree().change_scene_to_file("res://scenes/dice_selection.tscn")

func set_partial_text(length: int):
	if current_dialogue < dialogue.size():
		dialogue_text.text = dialogue[current_dialogue].substr(0, length)

func on_dialogue_finished():
	dialogue_finished = true

func next_dialogue():
	if not dialogue_finished:
		# If dialogue is still typing, complete it immediately
		if tween and tween.is_valid():
			tween.kill()  # Stop the current tween
		if current_dialogue < dialogue.size():
			dialogue_text.text = dialogue[current_dialogue]
		on_dialogue_finished()
	else:
		current_dialogue += 1
		if current_dialogue < dialogue.size():
			display_dialogue()
		else:
			print("Transitioning to dice selection scene")
			get_tree().change_scene_to_file("res://scenes/intro_scene/dice_selection/dice_selection.tscn")
