extends Node3D


var stamperPickedUp = false


func _on_document_area_entered(area: Area3D) -> void:
	if (area.collision_layer == 6 and stamperPickedUp):
		$StampTimer.start()


func _on_document_area_exited(area: Area3D) -> void:
	if (area.collision_layer == 6):
		$StampTimer.stop()


func _on_stamp_timer_timeout() -> void:
	print("Stamped")


func _on_stamper_picked_up(pickable: Variant) -> void:
	stamperPickedUp = true


func _on_stamper_dropped(pickable: Variant) -> void:
	stamperPickedUp = false
	$StampTimer.stop()
