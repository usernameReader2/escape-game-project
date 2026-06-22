extends Control

var numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
var code = ['3', '9', ' 2', '4']

var first_number: int = 0
var second_number: int = 0
var third_number: int = 0
var forth_number: int = 0

@export var first: Button
@export var second: Button
@export var third: Button
@export var forth: Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _go_back() -> void:
	get_tree().change_scene_to_file("res://Scenes/other_2.tscn")

func _on_first_number_pressed() -> void:
	pass
