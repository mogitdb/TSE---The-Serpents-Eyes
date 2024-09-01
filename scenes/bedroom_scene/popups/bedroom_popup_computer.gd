extends Panel

signal closed

var dice_shop_scene = preload("res://scenes/bedroom_scene/popups/computer_dice_shop.tscn")

func _ready():
	call_deferred("center_panel")
	$CloseButton.connect("pressed", Callable(self, "_on_CloseButton_pressed"))
	$MarginContainer/VBoxContainer/DiceSimulator.connect("pressed", Callable(self, "_on_DiceSimulatorButton_pressed"))
	$MarginContainer/VBoxContainer/PurchaseDice.connect("pressed", Callable(self, "_on_PurchaseDiceButton_pressed"))

func _on_CloseButton_pressed():
	emit_signal("closed")
	queue_free()

func _on_DiceSimulatorButton_pressed():
	var testing_ground_scene = load("res://scenes/testing_ground/testing_ground.tscn")
	var testing_ground_instance = testing_ground_scene.instantiate()
	get_tree().root.add_child(testing_ground_instance)
	get_tree().current_scene = testing_ground_instance
	queue_free()

func _on_PurchaseDiceButton_pressed():
	var dice_shop_instance = dice_shop_scene.instantiate()
	add_child(dice_shop_instance)
	dice_shop_instance.connect("closed", Callable(self, "_on_DiceShop_closed"))
	dice_shop_instance.center_panel()

func _on_DiceShop_closed():
	# You can add any necessary cleanup or refresh logic here
	pass

func center_panel():
	var viewport_size = get_viewport_rect().size
	var panel_size = $TextureRect.size
	var centered_position = (viewport_size - panel_size) / 2
	set_global_position(centered_position)
