extends Node

var score = 0

@onready var score_text = $ScoreText

func add_point():
	score += 1
	score_text.text = "You have collected " + str(score) + " coins"
