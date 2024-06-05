extends Node

var points = 0
@onready var score = $Score
@onready var you_died = $YouDied

func add_score():
	points += 1
	score.text = ": " + str(points)

func player_died():
	you_died.text = "YOU DIED!"
