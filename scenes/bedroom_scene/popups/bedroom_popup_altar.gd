extends Panel

signal closed

var dice_selection_scene = preload("res://scenes/bedroom_scene/popups/altar_dice_selection.tscn")
var current_loadout_index: int = 0
var dice_textures = {
	"ancient": preload("res://assets/buttons_dice/ancient_dice_placeholder.png"),
	"bio": preload("res://assets/buttons_dice/bio_110x110.png"),
	"magic": preload("res://assets/buttons_dice/magic_110x110.png"),
	"tech": preload("res://assets/buttons_dice/tech_110x110.png")
}

func _ready():
	call_deferred("center_panel")
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))
	$MarginContainer/VBoxContainer/HBoxContainer2/Control/TextureButton2.connect("pressed", Callable(self, "_on_NextButton_pressed"))
	update_loadout_display()

func update_loadout_display():
	$MarginContainer/VBoxContainer/HBoxContainer2/Control/Label2.text = "KIT #" + str(current_loadout_index + 1)
	
	var loadout = GameManager.get_dice_loadout(current_loadout_index)
	
	for i in range(7):
		var container_name = "HBoxContainer"
		if i >= 3 and i < 5:
			container_name = "HBoxContainer2"
		elif i >= 5:
			container_name = "HBoxContainer3"
		
		var dice_slot = get_node("MarginContainer/VBoxContainer/" + container_name + "/DiceSlot" + str(i + 1))
		var dice_image = dice_slot.get_node("DiceSlotImg" + str(i + 1))
		
		if i < loadout.size():
			update_dice_slot(dice_image, loadout[i], i)
		else:
			clear_dice_slot(dice_image, i)
	
	GameManager.switch_loadout(current_loadout_index)

func update_dice_slot(dice_image: TextureRect, dice: GameManager.DiceData, slot_index: int):
	dice_image.texture = dice_textures.get(dice.type, dice_textures["ancient"])
	dice_image.visible = true
	
	# Connect the button press to open the dice selection popup
	var dice_slot = dice_image.get_parent()
	if not dice_slot.is_connected("pressed", Callable(self, "open_dice_selection")):
		dice_slot.connect("pressed", Callable(self, "open_dice_selection").bind(slot_index))

func clear_dice_slot(dice_image: TextureRect, slot_index: int):
	dice_image.texture = null
	dice_image.visible = false
	
	# Connect the button press to open the dice selection popup
	var dice_slot = dice_image.get_parent()
	if not dice_slot.is_connected("pressed", Callable(self, "open_dice_selection")):
		dice_slot.connect("pressed", Callable(self, "open_dice_selection").bind(slot_index))

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()

func _on_NextButton_pressed():
	current_loadout_index = (current_loadout_index + 1) % 3
	update_loadout_display()

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)

func open_dice_selection(slot_index: int):
	var dice_selection = dice_selection_scene.instantiate()
	add_child(dice_selection)
	dice_selection.set_current_loadout(current_loadout_index, slot_index)
	dice_selection.connect("dice_selected", Callable(self, "_on_Dice_selected").bind(slot_index))

func _on_Dice_selected(dice_type: String, dice_sides: String, slot_index: int):
	var new_dice = GameManager.DiceData.new()
	new_dice.type = dice_type
	new_dice.sides = int(dice_sides.substr(1))
	
	GameManager.remove_dice_from_loadout(slot_index, current_loadout_index)
	GameManager.add_dice_to_loadout(new_dice, current_loadout_index)
	
	update_loadout_display()
