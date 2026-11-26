extends Control

func _ready() -> void:
	Sig.gameEnd.connect(endTransition)

func endTransition():
	$AnimationPlayer.play("MinigameEnd")
