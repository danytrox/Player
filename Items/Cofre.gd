extends CharacterBody2D

var playerHabi= false

@export var botiquin:PackedScene

func _process(delta):
	if playerHabi and Input.is_action_just_pressed("Accion"):
		var botiquinInstancia =  botiquin.instantiate()
		
		botiquinInstancia.global_position = self.global_position
		$AnimationPlayer.play("open")
		await get_tree().create_timer(0.5).timeout
		get_parent().add_child(botiquinInstancia)
		self.queue_free()
		

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		playerHabi= true


func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		playerHabi= false
	pass # Replace with function body.
