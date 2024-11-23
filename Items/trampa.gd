extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func _on_area_2d_area_entered(area):
	if area is HealthComponent:
		area.set_health(-1)

func _on_boton_body_entered(body):
	await get_tree().create_timer(1).timeout
	$Sprite2D.frame = 0
	$Area2D/CollisionShape2D.disabled = false
	await get_tree().create_timer(1).timeout
	$Sprite2D.frame = 1
	$Area2D/CollisionShape2D.disabled = true
