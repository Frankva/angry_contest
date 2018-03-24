extends RigidBody2D


func estMouvement():
	if linear_velocity.x<2 && linear_velocity.x>-2 && linear_velocity.y<2 && linear_velocity.y>-2 :
		return false
	else:
		return true
func explosion():
	var vExplosion=preload("res://Explosion.tscn").instance()
	vExplosion.position=position
	get_parent().add_child(vExplosion)
	get_parent().get_parent().get_node("explotion").play()
	queue_free()

func _on_Area2D_body_entered(body):
	if body.get_name()=="Bird"&& body.estMouvement():
		explosion()
		
	if body.get_name()=="Block3"&&body.estMouvement():
		explosion()
		body.explosion()