extends Node2D

signal transicion

func _ready():
	pass 


func _process(delta):
	pass



func _on_prueba_dinero_body_entered(body):
	if body.has_method("player") and Global.puntuacion > 10:
		Global.puntuacion = Global.puntuacion - 10
		$"Prueba dinero".queue_free()
