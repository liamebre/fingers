extends Node2D
var score = 0

func _ready():
	$fingers.hide()
	$knife.hide()
	get_tree().paused = true
	

func _setup():	
	$fingers.show()
	$knife.show()
	score = 0 
	

func _start():
	get_tree().paused = false 
	

func _on_start_startgame() -> void:
	$start.hide()
	_setup()
	$setupTimer.start()
	

func _process(_delta: float) -> void:
	_getInput()
	

func _getInput():
	if Input.is_action_just_pressed("lMouse"):
		$knife.position = get_global_mouse_position()
		score +=1
	

func _on_setup_timer_timeout() -> void:
	get_tree().paused = false 
