extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.position = Vector2(52,13)
	
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	$Camera2D.position = Vector2(1175,12)


func _on_area_2d_2_body_entered(body):
	$Camera2D.position = Vector2(1175,-640)
	
