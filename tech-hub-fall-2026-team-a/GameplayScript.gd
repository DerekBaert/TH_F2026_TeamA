extends Control
var Minigame :int = randi_range(1,1)

func SceneSwitch():
	match Minigame:
		1:
			get_tree().change_scene_to_file("res://Goingtobed.tscn")
		2:
			get_tree().change_scene_to_file("res://Dodge game folder by chalmers/node_2d.tscn")
		3:
			pass
		_:
			pass
pass
# get_tree().change_scene_to_file("")

func ChangeMinigames() -> void:
	SceneSwitch()
	pass # Replace with function body.
