extends Panel

signal dice_selected(dice_type, dice_sides)

var current_loadout_index: int = 0
var current_slot_index: int = 0
var selected_dice: TextureButton = null
var dice_sides = ["d4", "d6", "d8", "d10", "d12", "d20", "d30", "d100"]
var dice_types = ["Bio", "Magic", "Tech", "Ancient"]

func _ready():
	setup_buttons()
	$TextureRect/MarginContainer/VBoxContainer/ConfirmButton.connect("pressed", Callable(self, "_on_ConfirmButton_pressed"))

func setup_buttons():
	for side in dice_sides:
		var tab = $TextureRect/MarginContainer/VBoxContainer/TabContainer.get_node(side)
		if tab:
			var hbox = tab.get_node("HBoxContainer")
			for type in dice_types:
				var button = hbox.get_node(type + "Button")
				if button:
					button.connect("pressed", Callable(self, "_on_DiceButton_pressed").bind(side, type))

func _on_DiceButton_pressed(side: String, type: String):
	# Clear previous selection
	if selected_dice:
		selected_dice.material.set_shader_parameter("outline_width", 0.0)
	
	# Find and apply shader to the clicked button
	var tab = $TextureRect/MarginContainer/VBoxContainer/TabContainer.get_node(side)
	if tab:
		var hbox = tab.get_node("HBoxContainer")
		selected_dice = hbox.get_node(type + "Button")
		if selected_dice:
			selected_dice.material.set_shader_parameter("outline_width", 2.0)

func _on_ConfirmButton_pressed():
	if selected_dice:
		var current_tab = $TextureRect/MarginContainer/VBoxContainer/TabContainer.current_tab
		var dice_side = dice_sides[current_tab]
		var dice_type = selected_dice.name.replace("Button", "").to_lower()
		
		emit_signal("dice_selected", dice_type, dice_side)
		
		# Clear shader on selected dice
		selected_dice.material.set_shader_parameter("outline_width", 0.0)
		
		queue_free()
	else:
		print("No dice selected!")

func set_current_loadout(loadout_index: int, slot_index: int):
	current_loadout_index = loadout_index
	current_slot_index = slot_index
