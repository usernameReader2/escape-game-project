extends Node2D

var point = preload("res://Assets/cursor_point.png")
var click = preload("res://Assets/cursor_click.png")

@export var inv: Inventory
@export var appearance:Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	Input.set_custom_mouse_cursor(point)

#cursor changes when it hovers over a clickable/interactable area to show the user something will happen when the area is click on
func change_cursor():
	Input.set_custom_mouse_cursor(click)

#cursor changes back to 'pointing' when moving out of a clickable/interactable area
func change_cursor_back():
	Input.set_custom_mouse_cursor(point)

func _inventory_ui() -> void:
	print(InventoryGlobal)

#For zoomed_frame, causes the 'frame' to move out of the way to reveal the item underneath
func _swing_away(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$frame_normal.visible = false
		$frame_away.visible = true

#For zoomed_frame, causes the 'frame' to move back to it's previous position, mostly for 'realism'
func _swing_back(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$frame_away.visible = false
		$frame_normal.visible = true
		
#Signals for scene "other" since assests and item(s) are large enough that they don't really need a new scene
func _pullaway(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$bedcovers_normal.visible = false
		$bedcovers_pulled.visible = true
		
#In the 'Back' scene when this area is clicked on it gets removed
func _remove_pillow(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$pillow.visible = false

func _remove_cushion(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		$cushion.visible = false
		$removed_cushion.visible = true
		$couchbottom.visible = true
		
func _inspect_couchbottom(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("yy")
		appearance.show()
		await get_tree().create_timer(3.0).timeout
		appearance.hide()
