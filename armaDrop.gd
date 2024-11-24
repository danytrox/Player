extends CharacterBody2D

var armas = ['pistola','metralleta','laser']
var arma = ''
var index

func _ready():
	index = randi_range(0,2)


func _process(delta):
	if index == 0:
		$Sprite2D.texture = load("res://asset/Armas/armas/pistola/pistola.png")
	elif index == 1:
		$Sprite2D.texture = load("res://asset/Armas/armas/Metralleta/metralleta.png")
		$Sprite2D.scale = Vector2 (0.5,0.5)
	elif index == 2:
		$Sprite2D.scale = Vector2 (0.5,0.5)
		$Sprite2D.texture = load("res://asset/Armas/armas/laser/laser.png")
	pass

func _on_area_2d_body_entered(body):
	if body.has_method("player") and armas[index] == 'pistola':
		if !Global.inventario.has('pistola'):
			Global.inventario.append('pistola')
			
		self.queue_free()
	if body.has_method("player") and armas[index] == 'metralleta':
		if !Global.inventario.has('metralleta'):
			Global.inventario.append('metralleta')
		self.queue_free()
	if body.has_method("player") and armas[index] == 'laser':
		if !Global.inventario.has('laser'):
			Global.inventario.append('laser')
		self.queue_free()


