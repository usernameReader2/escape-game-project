extends Node

var items_invy = []
var inv_size: int = 12

signal inventory_updated

func _ready() -> void:
	items_invy.resize(inv_size)
	print("here")
	
func add_item():
	inventory_updated.emit()
	
func remove_item():
	inventory_updated.emit()
	
func increase_inventory_size():
	inventory_updated.emit()
	

	
