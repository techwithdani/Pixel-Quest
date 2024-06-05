extends Area2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var manager = %Manager

func _on_body_entered(body):
	manager.add_score()
	queue_free()
