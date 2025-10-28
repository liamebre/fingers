extends Node2D
var score = 0

func _ready():
	pass
func _process(_delta: float) -> void:
	_getInput()

func _getInput():
	if Input.is_action_just_pressed("shift"):
		$knife.position = Vector2(60,600)
		score +=1
	if Input.is_action_just_pressed("a"):
		$knife.position = Vector2(200,450)
		score +=1
	if Input.is_action_just_pressed("w"):
		$knife.position = Vector2(400,400)
		score +=1
	if Input.is_action_just_pressed("d"):
		$knife.position = Vector2(610,400)
		score +=1
	if Input.is_action_just_pressed("space"):
		$knife.position = Vector2(800,600)
		score +=1
	if Input.is_action_just_pressed("lMouse"):
		$knife.position = Vector2(1050,600)
		score +=1
	
