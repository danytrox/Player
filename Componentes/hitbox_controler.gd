extends Area2D

@export var damage: int = 1 
var playerCheck = false

func _ready():
	area_entered.connect(hit)

func hit(area):
	if area is HealthComponent and playerCheck:
			area.take_damage(damage)
		

func _process(delta):
	pass

# logica kl se tyiene que chekear que es el player el que esta dentro de el area para que haga daño 

func _on_player_check_body_entered(body):
	if body.has_method("player"):
		playerCheck = true


func _on_player_check_body_exited(body):
	if body.has_method("player"):
		playerCheck = false
	pass # Replace with function body.
