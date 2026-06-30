extends Area2D

@export var apperence: Label


func _interact_with(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("The doors are locked")
		apperence.show()
		await get_tree().create_timer(3.0).timeout
		apperence.hide()
