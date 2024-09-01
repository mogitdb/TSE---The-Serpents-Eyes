extends Panel

signal closed

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
			update_dice_slot(dice_image, loadout[i])
		else:
			clear_dice_slot(dice_image)
	
	GameManager.switch_loadout(current_loadout_index)

func update_dice_slot(dice_image: TextureRect, dice: GameManager.DiceData):
	dice_image.texture = dice_textures.get(dice.type, dice_textures["ancient"])
	dice_image.visible = true

func clear_dice_slot(dice_image: TextureRect):
	dice_image.texture = null
	dice_image.visible = false

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
