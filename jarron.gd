extends CharacterBody2D

@export var monea : PackedScene 

func _on_health_component_on_dead():
	var instance_monea = monea.instantiate()
	get_parent().add_child(instance_monea)
	
	$AnimationPlayer.play("destro")
	await get_tree().create_timer(0.6).timeout
	instance_monea.position = $".".position
	await get_tree().create_timer(0.2).timeout
	self.queue_free()
