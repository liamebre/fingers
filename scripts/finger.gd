extends Node2D

var score = 0
var place = 0 
func _on_pinkey_area_entered(_area: Area2D) -> void:
	$pinkey.hide()

func _on_ring_area_entered(_area: Area2D) -> void:
	$ring.hide()

func _on_middle_area_entered(_area: Area2D) -> void:
	$middle.hide()

func _on_point_area_entered(_area: Area2D) -> void:
	$point.hide()

func _on_thumb_area_entered(_area: Area2D) -> void:
	$thumb.hide()


func _on_button_button_down() -> void:
	score += 1
	if score%2 == 0:
		$Button.global_position = Vector2(1025,575)
		place +=1
	else:
		match place%6:
			1:
				$Button.global_position = Vector2(800,450)
			2:
				$Button.global_position = Vector2(625,200)
			3:
				$Button.global_position = Vector2(375,200)
			4:
				$Button.global_position = Vector2(150,325)
			5:
				$Button.global_position = Vector2(25,550)

		
