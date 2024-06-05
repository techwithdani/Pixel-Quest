extends Node2D

var apple_score_point = 0
var banana_score_point = 0
@onready var apples = $"../Apples"
@onready var bananas = $"../Bananas"
@onready var apple_score = $AppleScore
@onready var banana_score = $BananaScore


func add_score():
	if apples:
		apple_score_point += 1
		apple_score.text = str(apple_score_point)
	if bananas:
		banana_score_point += 1
		banana_score.text = str(banana_score_point)
