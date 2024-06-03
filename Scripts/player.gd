extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -380.0
@onready var animated_sprite = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	
	if direction < 0 or direction > 0:
		animated_sprite.play("run")
	else:
		animated_sprite.play("idle")


	if not is_on_floor():
		animated_sprite.play("jump")
	
	
	if Input.is_action_just_released("jump") and not is_on_floor():
		animated_sprite.play("fall")

	move_and_slide()
