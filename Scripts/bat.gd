extends CharacterBody2D

const SPEED = 120
var is_player_chase = false
var player = null

func _physics_process(delta):
	if is_player_chase:
		velocity = (player.get_global_position() - position).normalized() * SPEED * delta
	else:
		velocity = lerp(velocity, Vector2.ZERO, 00.7)
	move_and_collide(velocity)

func _on_player_chase_body_entered(body):
	player = body
	is_player_chase = true


func _on_player_chase_body_exited(body):
	player = null
	is_player_chase = false
