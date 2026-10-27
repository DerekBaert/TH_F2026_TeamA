extends Control
@export var Lives :=4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Lives:
		3:
			$Live4.hide()
		2:
			$Live3.hide()
		1:
			$Live2.hide()
		0:
			$Live1.hide()
	pass
