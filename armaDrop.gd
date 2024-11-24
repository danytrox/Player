extends CharacterBody2D

var armas = ['pistola','machete','metralleta','laser']
var arma = ''
var index


func _ready():
	index = randi_range(0,3)


func _process(delta):
	if armas[index] == "pistola" :
		print("sexoooo")
