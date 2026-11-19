extends Control
@export var time = 10
@onready var counter = $Bomb/Counter
@onready var bomb = $Bomb
var seconds = time
var frame = seconds
signal timerEnded
func _process(_delta: float) -> void:
	bomb.frame = seconds
	counter.frame = seconds
	if seconds < 0:
		timerEnded.emit()
	pass

func _on_second_timer_timeout() -> void:
	seconds -=1
	print(seconds)
	pass # Replace with function body.
