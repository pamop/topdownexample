extends CharacterBody2D

@export var move_speed : float = 100

func _physics_process(_delta):
	# Get input direction
	var input_direction = Vector2(
		  Input.get_action_strength("right") - Input.get_action_strength("left"),
		  Input.get_action_strength("down") - Input.get_action_strength("up")
		).normalized()
	## OR TRY BELOW: but weird, it made me unable to go diagonal down
	#var input_direction = Input.get_vector("left","right", "up", "down").floor()
	
	# update velocity
	velocity = input_direction * move_speed
	
	# move and slide function uses velocity to move character on map
	move_and_slide()
