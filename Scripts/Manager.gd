extends Node

var points = 0
var max_points = 35
@onready var score = $Score
@onready var you_died = $YouDied
@onready var winning_message = $WinningMessage
@onready var timer = $Timer

func add_score():
	points += 1
	score.text = ": 35/" + str(points)
	if points == max_points:
		winning_message.text = "CONGRATULATIONS! YOU COLLECTED ALL THE FRUITS! YOU WON!"
		Engine.time_scale = 0.3
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
