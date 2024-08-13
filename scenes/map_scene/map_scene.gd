extends Node2D

func _ready():
	# Connect the door button's pressed signal to the _on_door_pressed function
	$Background/TextureButton8.pressed.connect(_on_door_pressed)

func _on_door_pressed():
	# Print a debug message
	print("Door clicked - returning to bedroom scene")
	
	# Change to the bedroom scene
	get_tree().change_scene_to_file("res://scenes/bedroom_scene/bedroom_scene.tscn")
