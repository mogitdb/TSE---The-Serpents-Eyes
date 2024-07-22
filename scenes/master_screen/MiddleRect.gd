@tool
extends ColorRect

@export var corner_radius := 10

func _draw():
	var style_box = StyleBoxFlat.new()
	style_box.set_corner_radius_all(corner_radius)
	style_box.bg_color = color
	draw_style_box(style_box, Rect2(Vector2.ZERO, size))

func _notification(what):
	if what == NOTIFICATION_RESIZED:
		queue_redraw()
