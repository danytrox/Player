extends Node2D

func _ready():
	$AnimationPlayer.play("anim")
	

func _process(delta):
	await get_tree().create_timer(10).timeout
	get_tree().change_scene_to_file("res://Escenas/mundo.tscn")
	
