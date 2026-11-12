extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		Var.Lives -= 1
		
	print(Var.Lives)
	pass

func SceneSwitch():
	var Minigame :int = randi_range(1,5)
	match Minigame:
		1:
			pass
		2:
			pass
		3:
			pass
		_:
			pass
pass
