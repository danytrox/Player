extends CharacterBody2D
@export var baladiri:PackedScene
var dipareuwu = false
var bala_disparar

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		$Area2D/Timer.start(1)
		pass

func _process(delta):
	if bala_disparar == null:
		dipareuwu = false
	

func _on_timer_timeout():
	if !dipareuwu: 
		$AnimationPlayer.play("dips")
		await get_tree().create_timer(0.2).timeout
		bala_disparar =  baladiri.instantiate()
		bala_disparar.global_position = $Marker2D.global_position
		get_parent().add_child(bala_disparar)
		dipareuwu = true
		await get_tree().create_timer(0.5).timeout
		$AnimationPlayer.play("RESET")



func _on_tiempor_rota_timeout():
	#movimento rotatorio
	$".".rotation_degrees = $".".rotation_degrees + 90



func _on_health_component_on_dead():
	self.queue_free()
	
