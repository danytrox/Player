extends CharacterBody2D
class_name armaPlayer

var velocidad_x:int
var velocidad_y:int



func _process(delta):
	self.position.x += velocidad_x * delta
	self.position.y += velocidad_y *delta
	
	#posicionamiento del sprite segun que parametros x,y le pasemos
	if velocidad_y == 700 and velocidad_x == 0:
		$Sprite2D.rotation_degrees = 90
	elif velocidad_y == -700 and velocidad_x == 0:
		$Sprite2D.rotation_degrees = -90
		
	if velocidad_x == 700 and velocidad_y == 0:
		$Sprite2D.rotation_degrees = 0
	elif velocidad_x == -700 and velocidad_y == 0:
		$Sprite2D.rotation_degrees = 180


func balaPlayer():
	pass


func _on_hitbox_controler_body_entered(body):
	#si el cuerpo es distinto a yo mismo me destruyo (danery : "es muy aweona esta linea")
	if body != $".":
		self.queue_free()

