extends Node2D




func TimerEnded() -> void:
	get_tree().change_scene_to_file("res://Sleeping.tscn")
	Func.gobackLose()
	pass # Replace with function body.
