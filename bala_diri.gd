extends CharacterBody2D
var speed = 400
var player = null

func _ready():
	$AnimationPlayer.play("disp")
	pass

#los enemigos kls se matan entre si chingada madreeee
func _process(delta):
	seguir()

func _on_health_component_on_dead():
	self.queue_free()

func _on_detect_player_body_entered(body):
	if body.has_method("player"):
		player = body  

func seguir():
	if player != null:
		velocity = position.direction_to(player.position)* speed
		move_and_slide()

func _on_detect_player_body_exited(body):
	if body.has_method("player"):
		player = null


func _on_hitbox_controler_body_entered(body):
	if body.has_method("player"):
		self.queue_free()

