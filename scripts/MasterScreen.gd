extends CanvasLayer

@onready var menu_options = $GameArea/MainContainer/MenuMargin/Panel/MenuOptions
@onready var new_game_button = menu_options.get_node("NewGame")
@onready var load_game_button = menu_options.get_node("LoadGame")
@onready var settings_button = menu_options.get_node("Settings")
@onready var discord_button = menu_options.get_node("Discord")

var popup_scene: PackedScene = preload("res://scenes/popup_scene/popup_scene.tscn")

# Current active popup
var current_popup: Control = null

# Button effect variables
const HOVER_COLOR = Color(1, 1, 1)  # White
const NORMAL_COLOR = Color(0.5, 0.5, 0.5)  # Gray (adjust as needed)
const EXPAND_SCALE = 1.25
const TWEEN_DURATION = 0.2

# Load saved assets
var orbitron_font = preload("res://assets/fonts/orbitron_32_so.tres")
var panel_style_dark = preload("res://assets/panels/panel_dg_rounded.tres")
var panel_style_light = preload("res://assets/panels/panel_lg_rounded.tres")

func _ready():
	# Connect panel signals
	for panel in [new_game_button, load_game_button, settings_button, discord_button]:
		var button_inner = panel.get_node("ButtonInner")
		button_inner.mouse_entered.connect(_on_button_mouse_entered.bind(button_inner))
		button_inner.mouse_exited.connect(_on_button_mouse_exited.bind(button_inner))
		button_inner.gui_input.connect(_on_button_gui_input.bind(panel))
		
		# Set initial color
		button_inner.modulate = NORMAL_COLOR

func _on_button_mouse_entered(button_inner: Control):
	button_inner.modulate = HOVER_COLOR

func _on_button_mouse_exited(button_inner: Control):
	button_inner.modulate = NORMAL_COLOR

func _on_button_gui_input(event: InputEvent, panel: Panel):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		_on_panel_pressed(panel)

func _on_panel_pressed(panel: Panel):
	var tween = create_tween()
	
	# Store the original scale and position
	var original_scale = panel.scale
	var original_position = panel.position
	
	# Calculate the scale change
	var scale_change = Vector2(EXPAND_SCALE, EXPAND_SCALE) - Vector2.ONE
	
	# Calculate position offset to keep the button centered
	var position_offset = (panel.size * scale_change) / 2
	
	# Animate scale and position simultaneously
	tween.tween_property(panel, "scale", original_scale * EXPAND_SCALE, TWEEN_DURATION)
	tween.parallel().tween_property(panel, "position", original_position - position_offset, TWEEN_DURATION)
	
	# Revert the scale and position after showing the popup
	tween.tween_callback(_show_popup_for_panel.bind(panel))
	tween.tween_property(panel, "scale", original_scale, TWEEN_DURATION)
	tween.parallel().tween_property(panel, "position", original_position, TWEEN_DURATION)

func _show_popup_for_panel(panel: Panel):
	match panel:
		new_game_button: show_new_game_popup()
		load_game_button: show_load_game_popup()
		settings_button: show_settings_popup()
		discord_button: show_discord_popup()

func show_popup(title: String, content: Control):
	if current_popup:
		current_popup.queue_free()
	
	current_popup = popup_scene.instantiate()
	add_child(current_popup)
	
	# Set title
	var title_label = current_popup.get_node("ContentMargin/VBoxContainer/TitleBar/TitleLabel")
	if title_label:
		title_label.text = title
		title_label.add_theme_font_override("font", orbitron_font)
	
	# Add content
	var content_container = current_popup.get_node("ContentMargin/VBoxContainer/ContentContainer")
	if content_container:
		content_container.add_child(content)
	
	# Connect close button
	var close_button = current_popup.get_node("CloseButton")
	if close_button:
		close_button.pressed.connect(close_popup)
	
	# Position the popup on the right side
	var screen_size = get_viewport().get_visible_rect().size
	current_popup.position = Vector2(screen_size.x - current_popup.size.x - 50, (screen_size.y - current_popup.size.y) / 2)

func show_new_game_popup():
	var content = VBoxContainer.new()
	content.add_theme_constant_override("separation", 20)
	
	for i in range(3):
		var save_panel = create_save_panel("NO SAVE FILE")
		content.add_child(save_panel)
	
	show_popup("New Game", content)

func show_load_game_popup():
	var content = VBoxContainer.new()
	content.add_theme_constant_override("separation", 20)
	
	for i in range(3):
		var save_panel = create_save_panel("NO SAVE FILE")
		content.add_child(save_panel)
	
	show_popup("Load Game", content)

func create_save_panel(text: String) -> Panel:
	var outer_panel = Panel.new()
	outer_panel.add_theme_stylebox_override("panel", panel_style_dark)
	outer_panel.custom_minimum_size = Vector2(300, 100)
	
	var inner_panel = Panel.new()
	inner_panel.add_theme_stylebox_override("panel", panel_style_light)
	inner_panel.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT, Control.PRESET_MODE_KEEP_SIZE, 5)
	outer_panel.add_child(inner_panel)
	
	var label = Label.new()
	label.text = text
	label.add_theme_font_override("font", orbitron_font)
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	inner_panel.add_child(label)
	
	# Add hover effect
	inner_panel.mouse_entered.connect(func(): _on_save_panel_mouse_entered(inner_panel, label))
	inner_panel.mouse_exited.connect(func(): _on_save_panel_mouse_exited(inner_panel, label))
	
	return outer_panel

func _on_save_panel_mouse_entered(panel: Panel, label: Label):
	panel.add_theme_stylebox_override("panel", panel_style_dark.duplicate())
	panel.get_theme_stylebox("panel").bg_color = Color.WHITE
	label.add_theme_color_override("font_color", Color.BLACK)

func _on_save_panel_mouse_exited(panel: Panel, label: Label):
	panel.add_theme_stylebox_override("panel", panel_style_light)
	label.remove_theme_color_override("font_color")

func show_settings_popup():
	var content = TabContainer.new()
	var tabs = ["Graphics", "Audio", "Controls"]
	for tab in tabs:
		var tab_content = VBoxContainer.new()
		var label = Label.new()
		label.text = tab + " settings go here"
		label.add_theme_font_override("font", orbitron_font)
		tab_content.add_child(label)
		content.add_child(tab_content)
		content.set_tab_title(content.get_child_count() - 1, tab)
	show_popup("Settings", content)

func show_discord_popup():
	var content = VBoxContainer.new()
	var description = Label.new()
	description.text = "Join our Discord community!"
	description.add_theme_font_override("font", orbitron_font)
	var link = LineEdit.new()
	link.text = "https://discord.gg/your-invite-link"
	link.editable = false
	link.add_theme_font_override("font", orbitron_font)
	var copy_button = Button.new()
	copy_button.text = "Copy Link"
	copy_button.pressed.connect(func(): DisplayServer.clipboard_set(link.text))
	copy_button.add_theme_stylebox_override("normal", panel_style_light)
	copy_button.add_theme_font_override("font", orbitron_font)
	content.add_child(description)
	content.add_child(link)
	content.add_child(copy_button)
	show_popup("Discord", content)

func close_popup():
	if current_popup:
		current_popup.queue_free()
		current_popup = null

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		if current_popup:
			close_popup()
		else:
			get_tree().quit()
