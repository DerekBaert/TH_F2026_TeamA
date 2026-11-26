extends Node2D
func TimerEnded() -> void:
	Sig.gameEnd.emit()

func _on_time_timeout() -> void:
	Func.gobackLose()
	
