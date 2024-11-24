extends CharacterBody2D

var playercheck = false

@export var arma :PackedScene


func _process(delta):
	if playercheck and Input.is_action_just_pressed("Accion") and Global.puntuacion > 0:
		Global.puntuacion = Global.puntuacion - 1 
		$AnimationPlayer.play("animated")
		await get_tree().create_timer(1).timeout
		
		var armaDrop =  arma.instantiate()
		armaDrop.position = $".".position
		get_parent().add_child(armaDrop)
		self.queue_free()
	
func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		playercheck = true


func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		playercheck = false

