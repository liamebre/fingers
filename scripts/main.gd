extends Node2D
var score = 0

func _ready():
	$fingers.hide()
	$knife.hide()
	$display.hide()
	get_tree().paused = true
	

func _setup():	
	$fingers.show()
	$knife.show()
	$display.show()
	score = 0 
	

func _start():
	get_tree().paused = false 
	

func _on_start_startgame() -> void:
	$start.hide()
	_setup()
	$setupTimer.start()
	

func _process(_delta: float) -> void:
	_getInput()
	$display._getscore($fingers.score)
	

func _getInput():
	if Input.is_action_just_pressed("lMouse"):
		$knife.position = get_global_mouse_position()
	

func _on_setup_timer_timeout() -> void:
	get_tree().paused = false 
