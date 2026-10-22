extends CharacterBody2D

@export var speed: int = 500
@export var acceleration: int = 10
@export var jump_speed: int = -speed * 2

func handle_input() -> void:
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
		
	var input_direction = Input.get_axis("left", "right")
	
	if input_direction == 0:
		velocity.x = move_toward(velocity.x, 0, acceleration)
	else:
		velocity.x = move_toward(velocity.x, speed * input_direction, acceleration)

func _physics_process(delta: float) -> void:
	handle_input()
	move_and_slide()
