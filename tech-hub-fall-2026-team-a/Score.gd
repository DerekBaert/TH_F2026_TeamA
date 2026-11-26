extends Control
@onready var digit1 = $Digit1
@onready var digit2 = $Digit2
var score1 = Var.Highscore
var score2 = 0

func _process(delta: float) -> void:
	digit1.frame = score1
	digit2.frame = score2
	if score1 >10:
		score2 += 1
		score1 -=10
