extends RefCounted

const NOTCH := 62.0
var panel_top := 62.0

func notch_clear(top: float) -> bool:
	return top >= NOTCH

func may_panel() -> bool:
	return notch_clear(panel_top)
