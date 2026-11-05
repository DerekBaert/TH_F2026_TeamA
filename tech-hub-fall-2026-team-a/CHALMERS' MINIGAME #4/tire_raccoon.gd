extends CharacterBody2D


var SPEED = 400.0
const JUMP_VELOCITY = -600.0
signal hit

func _ready():
	$AnimatedSprite2D.play()

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	velocity.x = SPEED
	move_and_slide()



func _on_area_2d_area_entered(area: Area2D) -> void:
	hit.emit()
	print("touched")
	SPEED = 0
