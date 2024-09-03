extends Panel

signal closed

var dice_sides = ["d4", "d6", "d8", "d10", "d12", "d20", "d30", "d100"]
var dice_types = ["Tech", "Magic", "Bio", "Ancient"]

func _ready():
	setup_buy_buttons()
	update_all_button_states()
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))

func setup_buy_buttons():
	for side in dice_sides:
		var tab = $MarginContainer/VBoxContainer/TabContainer.get_node(side)
		if tab:
			var vbox = tab.get_node("VBoxContainer")
			if vbox:
				for i in range(4):  # 4 types of dice
					var hbox = vbox.get_node("HBoxContainer" + str(i + 1))
					if hbox:
						var button = hbox.get_node(side.to_upper() + dice_types[i] + "BuyButton")
						if button:
							button.connect("pressed", Callable(self, "_on_BuyButton_pressed").bind(side, dice_types[i].to_lower()))
						else:
							print("Warning: Button not found for " + side.to_upper() + dice_types[i] + "BuyButton")
					else:
						print("Warning: HBoxContainer" + str(i + 1) + " not found for " + side)
			else:
				print("Warning: VBoxContainer not found for " + side)
		else:
			print("Warning: Tab not found for " + side)

func update_all_button_states():
	for side in dice_sides:
		for type in dice_types:
			update_button_state(side, type.to_lower())

func _on_BuyButton_pressed(side: String, type: String):
	if GameManager.has_owned_dice(side, type):
		print("You already own this dice!")
	else:
		GameManager.add_owned_dice(side, type)
		print("Purchased " + type + " " + side)
		update_button_state(side, type)

func update_button_state(side: String, type: String):
	var tab = $MarginContainer/VBoxContainer/TabContainer.get_node(side)
	if tab:
		var vbox = tab.get_node("VBoxContainer")
		if vbox:
			var hbox = vbox.get_node("HBoxContainer" + str(dice_types.find(type.capitalize()) + 1))
			if hbox:
				var button = hbox.get_node(side.to_upper() + type.capitalize() + "BuyButton")
				if button:
					button.disabled = true
					var label = button.get_node("Label")
					if label:
						label.text = "OWNED"
					else:
						print("Warning: Label not found for " + side.to_upper() + " " + type + " button")
				else:
					print("Warning: Button not found for " + side.to_upper() + type.capitalize() + "BuyButton")
			else:
				print("Warning: HBoxContainer not found for " + side + " " + type)
		else:
			print("Warning: VBoxContainer not found for " + side)
	else:
		print("Warning: Tab not found for " + side)

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
