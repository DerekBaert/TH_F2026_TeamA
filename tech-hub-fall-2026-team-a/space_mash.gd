extends Control
var points : int = 0
var pointsmax = 10
var win = false

func _process(_delta):
	if Input.is_action_just_pressed("jump"):
		points += 1
		%Label2.text = str(points)

	if points >= pointsmax and win == false:
		win = true
		WinCondition()
		
func WinCondition():
	print("YIPPPEEEE XANDER STINKY")
	Func.gobackWin()
	


func _on_timer_timer_ended() -> void:
	Func.gobackLose()
	pass # Replace with function body.
