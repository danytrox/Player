extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(Global.puntuacion)
	if Global.vidaPlayer == 5:
		$VBoxContainer/base/VBoxContainer/vida.frame = 2
	elif Global.vidaPlayer == 4:
		$VBoxContainer/base/VBoxContainer/vida.frame = 3
	elif Global.vidaPlayer == 3:
		$VBoxContainer/base/VBoxContainer/vida.frame = 4
	elif Global.vidaPlayer == 2:
		$VBoxContainer/base/VBoxContainer/vida.frame = 5
	elif Global.vidaPlayer == 1:
		$VBoxContainer/base/VBoxContainer/vida.frame = 6
	elif Global.vidaPlayer == 0:
		$VBoxContainer/base/VBoxContainer/vida.frame = 7
		
	
	pass
