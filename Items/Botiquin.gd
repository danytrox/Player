extends CharacterBody2D


func _on_area_2d_area_entered(area):
	if area is HealthComponent:
		area.set_health(1)
		self.queue_free()
		
		
