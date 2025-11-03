extends Control
var score = 0

func _getscore(x):
	score = x
	
func _process(_delta):
	$RichTextLabel.text = "SCORE : " + str(score)
