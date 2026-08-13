extends Area2D

@export var appearance: Label


func _inspect_couchbottom(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("yy")
		appearance.show()
		await get_tree().create_timer(3.0).timeout
		appearance.hide()
