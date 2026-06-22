extends Panel

@export var item: Inv_items = null:
	set(value):
		item = value
		
		if value == null:
			$texture.texture = null
			$Amount.text = ""
			return
		
			$texture.texture = value.icon
	
var amount: int = 0:
	set(value):
		amount = value
		$Amount.text = str(value)
		if amount <= 0:
			item = null
			
func set_amount(value: int):
	amount = value
	
func add_amount(value: int):
	amount += value
	
func _can_drop(_at_position, data):
	if "item" in data:
		return is_instance_of(data.item, Inv_items)
	return false
	
func _drop(_at_position, data):
	var temp = item
	item = data.item
	data.item = temp
	
	temp = amount
	amount = data.amount
	data.amount = temp
	
func _drag(_at_position, data):
	return self
	
