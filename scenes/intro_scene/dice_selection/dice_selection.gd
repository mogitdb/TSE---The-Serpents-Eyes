extends Node2D

@onready var dialogue_text = $Background/TextureRect/MarginContainer/DialogueText
@onready var next_button = $Background/TextureRect/MarginContainer/TextureButton
@onready var tech_dice = $Background/MarginContainer/TechDice
@onready var magic_dice = $Background/MarginContainer/MagicDice
@onready var bio_dice = $Background/MarginContainer/BioDice

var dice_info = {
	"bio": {
		"name": "Bio Dice",
		"description": "A living die that adapts and evolves.",
		"lore": "Rumored to be a creation of the mysterious Cellulord, this die seems almost alive."
	},
	"tech": {
		"name": "Tech Dice",
		"description": "A high-tech die with advanced AI capabilities.",
		"lore": "Some say this die contains technology far beyond our current understanding, perhaps a gift from Technos."
	},
	"magic": {
		"name": "Magic Dice",
		"description": "A mystical die imbued with arcane energies.",
		"lore": "Whispers speak of Thaumaturga's influence in the creation of this enigmatic die."
	}
}

var selected_dice = null
var confirmation_scene = preload("res://scenes/intro_scene/dice_selection/dice_selection_confirmation.tscn")
var hover_tween: Tween

func _ready():
	dialogue_text.text = ""
	next_button.show()
	next_button.pressed.connect(on_next_pressed)
	setup_dice()
	display_initial_text()

func setup_dice():
	for dice in [tech_dice, magic_dice, bio_dice]:
		if dice.material:
			dice.material.set_shader_parameter("outline_width", 0.0)
		dice.gui_input.connect(_on_dice_input.bind(dice.name.to_lower().replace("dice", "")))

func display_initial_text():
	dialogue_text.text = "Choose your dice. Each has unique properties that will shape your journey."

func _on_dice_input(event: InputEvent, dice_type: String):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		select_dice(dice_type)

func select_dice(dice_type: String):
	if hover_tween:
		hover_tween.kill()

	for dice in [tech_dice, magic_dice, bio_dice]:
		dice.position.y = 140
		if dice.material:
			dice.material.set_shader_parameter("outline_width", 0.0)
	
	var selected_dice_node = get_node("Background/MarginContainer/" + dice_type.capitalize() + "Dice")
	if selected_dice_node and selected_dice_node.material:
		selected_dice_node.material.set_shader_parameter("outline_width", 2.0)
	
	hover_tween = create_tween().set_loops().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	hover_tween.tween_property(selected_dice_node, "position:y", 125.0, 0.5)
	hover_tween.tween_property(selected_dice_node, "position:y", 140.0, 0.5)
	
	selected_dice = dice_type
	update_dialogue()

func update_dialogue():
	var dice = dice_info[selected_dice]
	dialogue_text.text = dice.name + "\n\n" + dice.description + "\n\n" + dice.lore

func on_next_pressed():
	if selected_dice:
		show_confirmation()
	else:
		dialogue_text.text = "Please select a dice before continuing."

func show_confirmation():
	var confirm_instance = confirmation_scene.instantiate()
	add_child(confirm_instance)
	confirm_instance.connect("confirmed", Callable(self, "on_dice_confirmed"))
	confirm_instance.connect("cancelled", Callable(self, "on_confirmation_cancelled"))
	center_popup(confirm_instance)

func center_popup(popup):
	var viewport_size = get_viewport_rect().size
	var popup_size = popup.get_node("TextureRect").size
	var centered_position = (viewport_size - popup_size) / 2
	popup.set_position(centered_position)

func on_dice_confirmed():
	GameManager.set_starter_dice(selected_dice)
	SaveManager.save_game(GameManager.current_save_slot, GameManager.current_player_name, selected_dice)
	get_tree().change_scene_to_file("res://scenes/bedroom_scene/bedroom_scene.tscn")

func on_confirmation_cancelled():
	pass
