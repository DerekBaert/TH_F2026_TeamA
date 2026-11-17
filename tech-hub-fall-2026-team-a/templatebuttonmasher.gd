extends Node

var score: int = 0

func _ready() -> void:
	$ScoreLabel.text = "Score: " + str(score)


func _on_button_pressed() -> void:
	score += 1
	$ScoreLabel.text = "Score: " + str(score)
