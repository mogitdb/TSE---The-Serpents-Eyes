extends Node2D

var current_popup = null
var current_highlighted_item: TextureButton = null
var popup_scenes = {
	"Robot": preload("res://scenes/bedroom_scene/popups/bedroom_popup_robot.tscn"),
	"Mailbox": preload("res://scenes/bedroom_scene/popups/bedroom_popup_mailbox.tscn"),
	"Workbench": preload("res://scenes/bedroom_scene/popups/bedroom_popup_workbench.tscn"),
	"Altar": preload("res://scenes/bedroom_scene/popups/bedroom_popup_altar.tscn"),
	"Computer": preload("res://scenes/bedroom_scene/popups/bedroom_popup_computer.tscn"),
	"Jukebox": preload("res://scenes/bedroom_scene/popups/bedroom_popup_jukebox.tscn"),
	"Library": preload("res://scenes/bedroom_scene/popups/bedroom_popup_library.tscn")
}

func _ready():
	setup_interactive_items()

func setup_interactive_items():
	var items = {
		"Column1": ["Workbench", "Altar", "Jukebox"],
		"Column2": ["Mailbox"],
		"Column3": ["Door"],
		"Column4": ["Robot"],
		"Column5": ["Computer", "Library"]
	}
	
	for column in items:
		for item_name in items[column]:
			var button = get_node("TextureRect/Content/HBoxContainer/" + column + "/" + item_name)
			if button is TextureButton:
				if item_name in popup_scenes:
					button.connect("pressed", Callable(self, "show_popup").bind(item_name))
				elif item_name == "Door":
					button.connect("pressed", Callable(self, "_on_Door_pressed"))
				if button.material:
					button.material.set_shader_parameter("outline_width", 0.0)

func show_popup(item_name):
	var columns = ["Column1", "Column2", "Column3", "Column4", "Column5"]
	var selected_item = null
	
	for column in columns:
		selected_item = get_node_or_null("TextureRect/Content/HBoxContainer/" + column + "/" + item_name)
		if selected_item:
			break
	
	if selected_item is TextureButton:
		highlight_item(selected_item)
	
	if current_popup:
		current_popup.queue_free()
	
	current_popup = popup_scenes[item_name].instantiate()
	add_child(current_popup)
	current_popup.connect("closed", Callable(self, "close_popup"))
	
	for other_item in popup_scenes.keys():
		if other_item != item_name:
			var button = current_popup.get_node_or_null(other_item + "Button")
			if button:
				button.connect("pressed", Callable(self, "show_popup").bind(other_item))

func highlight_item(item: TextureButton):
	if current_highlighted_item and current_highlighted_item != item:
		current_highlighted_item.material.set_shader_parameter("outline_width", 0.0)
	
	current_highlighted_item = item
	if current_highlighted_item.material:
		current_highlighted_item.material.set_shader_parameter("outline_width", 2.0)

func close_popup():
	if current_popup:
		current_popup.queue_free()
		current_popup = null
	
	if current_highlighted_item:
		current_highlighted_item.material.set_shader_parameter("outline_width", 0.0)
		current_highlighted_item = null

func _on_Door_pressed():
	print("Door clicked - transitioning to map scene")
	if current_highlighted_item:
		current_highlighted_item.material.set_shader_parameter("outline_width", 0.0)
		current_highlighted_item = null
	
	var door_button = get_node("TextureRect/Content/HBoxContainer/Column3/Door")
	if door_button is TextureButton and door_button.material:
		door_button.material.set_shader_parameter("outline_width", 2.0)
		
		# Wait for a short time to show the highlight before changing scenes
		await get_tree().create_timer(0.2).timeout
		
		# Change to the map scene
		get_tree().change_scene_to_file("res://scenes/map_scene/map_scene.tscn")
