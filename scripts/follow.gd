extends Node2D

func _ready() -> void:
	var lens: Camera2D = get_node("SheetLens")
	lens.make_current()
