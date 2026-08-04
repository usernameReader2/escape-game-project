extends Area2D

@export var appearence_1: Label
@export var appearence_2: Label

func _interact(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		if $door:
			print("The doors are locked")
			appearence_1.show()
			await get_tree().create_timer(3.0).timeout
			appearence_1.hide()
		elif $sign:
			print("noh")
			appearence_2.show()
			await get_tree().create_timer(3.0).timeout
			appearence_2.hide()

func timeout():
	get_tree().create_timer(3.0).timeout
