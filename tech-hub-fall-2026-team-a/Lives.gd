extends Control
@onready var live1 = $Live1
@onready var live2 = $Live2
@onready var live3 = $Live3
@onready var live4 = $Live4

func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		Var.Lives -= 1
	match Var.Lives:
		3:
			live4.play("LiveLost")
		2:
			live3.play("LiveLost")
		1:
			live2.play("LiveLost")
		0:
			live1.play("LiveLost")
	pass
