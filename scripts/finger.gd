extends Node2D

func _on_pinkey_area_entered(area: Area2D) -> void:
	$pinkey.hide()

func _on_ring_area_entered(area: Area2D) -> void:
	$ring.hide()

func _on_middle_area_entered(area: Area2D) -> void:
	$middle.hide()

func _on_point_area_entered(area: Area2D) -> void:
	$point.hide()

func _on_thumb_area_entered(area: Area2D) -> void:
	$thumb.hide()
