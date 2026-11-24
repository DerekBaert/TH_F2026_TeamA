extends StaticBody2D

@onready var animation = $AnimationPlayer
@onready var sprite = $Sprite2D

func _physics_process(delta):
	
	if Input.is_action_just_pressed("jump"):
		animation.play("Lifting")
		
	if animation.current_animation != "Lifting":
		animation.play("BuffIdle")
		
	
