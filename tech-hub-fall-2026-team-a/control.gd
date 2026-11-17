extends Control

var points : int = 0
var pointsmax = 50
var win = false
func _on_button_pressed() -> void:
	points += 1
	%Label2.text = str(points)

func _process(delta: float) -> void:
	if points >= pointsmax:
		win = true 
		
