extends Node2D

var point = load("res://Assets/cursor_point.png")
var click =load("res://Assets/cursor_click.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	Input.set_custom_mouse_cursor(point)
	
	Input.set_custom_mouse_cursor(click, Input.CURSOR_IBEAM)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
