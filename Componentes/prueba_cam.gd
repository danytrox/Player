extends Node2D
signal TranDere 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_derecha_body_entered(body):
	if body.has_method("player"):
		emit_signal("TranDere")
		$AnimationPlayer.play("derecha_1")
	pass # Replace with function body.
