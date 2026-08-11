extends Node

var used_things: = {}

func _ready() -> void:
	pass
	
func queued(node: Node):
	var path = get_path()
	Gamemanager.remove_child(path)
	node.queue_free()
	
