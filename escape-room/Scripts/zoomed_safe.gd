extends Control

@export var first: TextureButton
@export var second: TextureButton
@export var third: TextureButton
@export var forth: TextureButton

var numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _go_back() -> void:
	get_tree().change_scene_to_file("res://Scenes/other_2.tscn")
