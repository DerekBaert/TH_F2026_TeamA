extends RigidBody2D
signal hit
var time = 10
func _ready():
	gravity_scale = 0.0
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()
	$AnimatedSprite2D.play()
	print("mob summon")
	var mob_spawn_location = $MobPath/MobSpawnLocation
	mob_spawn_location.progress_ratio = randf()
	print(mob_spawn_location.position)
	position.x = mob_spawn_location.position.x
	await get_tree().create_timer(time - 3).timeout #change to the timer thingymabob
	gravity_scale = 1.0




func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	
