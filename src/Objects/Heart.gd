extends Obstacle

func _on_Obstacle_body_entered(body: Node) -> void:
	if body is Player:
		queue_free()
		body.heal(1)