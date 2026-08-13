extends Area2D

@export var appearance: Label

func _ready():
	pass
	
func _interact_with(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("noh")
		appearance.show()
		await get_tree().create_timer(3.0).timeout
		appearance.hide()
