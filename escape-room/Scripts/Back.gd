extends Control

	
func _go_left() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/other_2.tscn")

func _go_right() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/other.tscn")
