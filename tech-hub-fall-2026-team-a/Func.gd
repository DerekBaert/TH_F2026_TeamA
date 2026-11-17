extends Node

func gobackWin():
	get_tree().change_scene_to_file("res://Sleeping.tscn")


func gobackLose():
	Var.Lives -=1
	get_tree().change_scene_to_file("res://Sleeping.tscn")
