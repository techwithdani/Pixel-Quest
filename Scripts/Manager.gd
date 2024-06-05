extends Node

var points = 0
@onready var score = $Score

func add_score():
	points += 1
	score.text = ": " + str(points)
