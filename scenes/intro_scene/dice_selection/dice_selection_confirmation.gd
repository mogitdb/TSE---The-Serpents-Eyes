extends Control

signal confirmed
signal cancelled

@onready var confirm_button = $TextureRect/MarginContainer/VBoxContainer/StartButton
@onready var close_button = $CloseButton

func _ready():
	confirm_button.pressed.connect(on_confirm)
	close_button.pressed.connect(on_cancel)

func on_confirm():
	emit_signal("confirmed")
	queue_free()

func on_cancel():
	emit_signal("cancelled")
	queue_free()
