extends Area2D

@onready var animated_sprite = $AnimatedSprite2D


func _on_body_entered(body):
	animated_sprite.play("collected")
