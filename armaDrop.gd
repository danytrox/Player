extends CharacterBody2D

var armas = ['pistola','machete','metralleta','laser']
var arma = ''
var index



func _ready():
	index = randi_range(0,3)


func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if body.has_method("player") and armas[index] == 'pistola':
		if !Global.inventario.has('pistola'):
			Global.inventario.append('pistola')
	if body.has_method("player") and armas[index] == 'metralleta':
		if !Global.inventario.has('metralleta'):
			Global.inventario.append('metralleta')
	if body.has_method("player") and armas[index] == 'laser':
		if !Global.inventario.has('laser'):
			Global.inventario.append('laser')


