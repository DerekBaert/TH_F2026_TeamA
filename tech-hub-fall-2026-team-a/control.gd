extends Control
var points : int = 0
var pointsmax = 10
var win = false
func _on_button_pressed() -> void:
	points += 1
	%Label2.text = str(points)

func _process(delta: float) -> void:
	if points >= pointsmax and win == false:
		win = true
		WinCondition()
func WinCondition():
	print("YIPPPEEEE XANDER STINKY")
	Func.gobackWin()
	


func _on_timer_timer_ended() -> void:
	Func.gobackLose()
	pass # Replace with function body.
