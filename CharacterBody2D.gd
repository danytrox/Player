extends CharacterBody2D



func _on_health_component_on_dead():
	$AnimationPlayer.play("destructor")
	await get_tree().create_timer(0.6).timeout
	self.queue_free()
	pass # Replace with function body.
