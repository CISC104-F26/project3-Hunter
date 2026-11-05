extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -800.0

const LEFT_DASH = -500
const RIGHT_DASH = 500


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Handle hover.
	if Input.is_action_pressed("hover"):
		velocity.y = 0

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_right_shape_body_entered(body: Node2D) -> void:
	print ("The Right Bingus was Obtained")


func _on_left_shape_body_entered(body: Node2D) -> void:
	print ("The Left Bingus was Obtained")


func _on_right_shape_body_exited(body: Node2D) -> void:
	print ("Nvm Right Bingus wasnt Obtained")


func _on_left_shape_body_exited(body: Node2D) -> void:
	print ("Nvm Left Bingus wasnt Obtained")
