extends StaticBody2D

@onready var animations: AnimatedSprite2D = $AnimatedSprite2D

enum State{BUFFIDLE, LIFTING}
var current_state: State = State.BUFFIDLE


func handle_input() -> void:
	
	if Input.is_action_just_pressed("jump"):
		current_state = State.LIFTING
	else:
		current_state = State.BUFFIDLE
		
func update_animation() -> void:
	
	match current_state:
		State.BUFFIDLE: animations.play("BuffIdle")
		State.LIFTING: animations.play("Lifting")
		
func update_states() -> void:
	match current_state:
		
		State.LIFTING:
			if Input.is_action_just_pressed("jump"):
				current_state = State.LIFTING
			else:
				current_state = State.BUFFIDLE
			
				
func _physics_process(delta: float) -> void:
	handle_input()
	update_animation()
	update_states()
