extends Control

var default_code = [0, 0, 0, 0]
var code_enter = [3, 9, 2, 4]
var max: int = 10
var key = "res://Scenes/area_2d.tscn"

func _go_back() -> void:
	get_tree().change_scene_to_file("res://Scenes/other_2.tscn")
	
func _on_first_number_pressed() -> void:
	default_code[0] = (default_code[0] + int(1)) % max
	$HBoxContainer/First_number.text = str(default_code[0])
	print(default_code)

func _on_second_number_pressed() -> void:
	default_code[1] = (default_code[1] + int(1)) % max
	$HBoxContainer/Second_number.text = str(default_code[1])
	print(default_code)

func _on_third_number_pressed() -> void:
	default_code[2] = (default_code[2] + int(1)) % max
	$HBoxContainer/Third_number.text = str(default_code[2])
	print(default_code)

func _on_forth_number_pressed() -> void:
	default_code[3] = (default_code[3] + int(1)) % max
	$HBoxContainer/Forth_number.text = str(default_code[3])
	print(default_code)

func _check_code() -> void:
	if default_code == code_enter:
		$HBoxContainer.queue_free()
	else: 
		print("no")
