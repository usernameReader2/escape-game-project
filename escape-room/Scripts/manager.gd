extends Node2D

var point = preload("res://Assets/cursor_point.png")
var click = preload("res://Assets/cursor_click.png")

@export var inv: Inventory

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	Input.set_custom_mouse_cursor(point)

func change_cursor():
	Input.set_custom_mouse_cursor(click)
	
func change_cursor_back():
	Input.set_custom_mouse_cursor(point)

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _inventory_ui() -> void:
	pass # Replace with function body.
