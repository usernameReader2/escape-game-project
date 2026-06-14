extends Control

var current_scene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_scene = get_tree().current_scene
	print(current_scene.name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _go_left() -> void:
	if current_scene.name:
		get_tree().call_deferred("change_scene_to_file", "res://Scenes/other.tscn")

func _go_right() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://Scenes/other_2.tscn")
