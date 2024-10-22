extends Area2D

signal recoger_item


func _on_body_entered(body):
	if body.is_in_group("Jugador"):
		emit_signal("recoger_item")
		queue_free()
