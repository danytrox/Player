extends CharacterBody2D

@export  var bala_disparar:PackedScene





func _on_timer_timeout():
		
		$AnimationPlayer.play("disp")
		await get_tree().create_timer(0.2).timeout
		var bala =  bala_disparar.instantiate()
		bala.velocidad_y = 500
		bala.global_position = $Marker2D.global_position
		get_parent().add_child(bala)
		await get_tree().create_timer(0.5).timeout
		$AnimationPlayer.play("RESET")
