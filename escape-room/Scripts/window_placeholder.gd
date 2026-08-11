extends Area2D

@export var outside: Label

func _look_out(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("hey")
		outside.show()
		await get_tree().create_timer(3.0).timeout
		outside.hide()
