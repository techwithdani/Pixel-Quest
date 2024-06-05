extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var manager = %Manager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	manager.add_score()
	animation_player.play("pickup")
