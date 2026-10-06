extends Node2D

const Rules = preload("res://scripts/rules.gd")
var rules = Rules.new()

func _ready() -> void:
	var lens: Camera2D = get_node("SheetLens")
	lens.make_current()
	var mark: ColorRect = get_node("PanelMark")
	rules.panel_top = mark.offset_top

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("leap"):
		rules.panel_top = 0.0
		return
	if event.is_action_pressed("primary") and rules.may_panel():
		_go("res://scenes/panel.tscn")

func _go(next_path: String) -> void:
	get_tree().change_scene_to_file(next_path)
