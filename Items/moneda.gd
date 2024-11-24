extends CharacterBody2D

func _ready():
	$AnimationPlayer.play("Idle")
	

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		Global.puntuacion = Global.puntuacion + 1
		self.queue_free()
		
