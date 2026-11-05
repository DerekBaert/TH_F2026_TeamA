extends Control
@export var time = seconds
@onready var counter = $Bomb/Counter
var seconds = 3
var frame = seconds

func _process(delta: float) -> void:
	counter.frame = seconds
	pass

func _on_second_timer_timeout() -> void:
	seconds -=1
	print(seconds)
	pass # Replace with function body.
