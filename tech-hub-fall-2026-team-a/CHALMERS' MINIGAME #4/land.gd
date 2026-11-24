extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var land_spawn_location = $LandPath/LandPathLocation
	land_spawn_location.progress_ratio = randf()
	print(land_spawn_location.position)
	position.y = land_spawn_location.position.y
