extends Control
var Minigame :int = randi_range(1,1)

func _ready() -> void:
	$AnimationPlayer.play("Transition")
	pass
func SceneSwitch():
	match Minigame:
		1:
			get_tree().change_scene_to_file("res://Goingtobed.tscn")
		2:
			pass
		3:
			pass
		_:
			pass
pass
# get_tree().change_scene_to_file("")


func _on_change_minigames_timeout() -> void:
	SceneSwitch()
	pass # Replace with function body.
