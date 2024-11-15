extends Node3D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_document_area_entered(area: Area3D) -> void:
	if (area.collision_layer == 6):
		print("Stamped")
