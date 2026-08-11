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

func _inventory_ui() -> void:
	pass # Replace with function body.


func _swing_away(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$frame_normal.visible = false
		$frame_away.visible = true

func _swing_back(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$frame_away.visible = false
		$frame_normal.visible = true
		
#Signals for scene "other" since assests and item(s) are large enough that they don't really need a new scene
func _pullaway(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$bedcovers_normal.visible = false
		$bedcovers_pulled.visible = true

func _remove_pillow(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$pillow.visible = false
