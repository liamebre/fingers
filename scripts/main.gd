extends Node2D
var score = 0

func _ready():
	$fingers.hide()
	$knife.hide()
	
func _setup():
	$fingers.show()
	$knife.show()
	score = 0 
	
func _on_start_startgame() -> void:
	_setup()
	$start.hide()
	
func _process(_delta: float) -> void:
	_getInput()

func _getInput():
	if Input.is_action_just_pressed("lMouse"):
		$knife.position = get_global_mouse_position()
		score +=1
	
