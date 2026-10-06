extends AutoworkTest

const Rules = preload("res://scripts/rules.gd")

func test_notch_clear() -> void:
	var rules = Rules.new()
	assert_false(rules.notch_clear(61.0), "under the notch")
	assert_true(rules.notch_clear(62.0), "clear of the notch")
	rules.panel_top = 0.0
	assert_false(rules.may_panel(), "panel waits")
	rules.panel_top = 62.0
	assert_true(rules.may_panel(), "panel opens")
	assert_true(load("res://scenes/panel.tscn") != null, "panel loads")
