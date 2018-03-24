extends RigidBody2D

func estMouvement():
	if linear_velocity.x<1 && linear_velocity.x>-1 && linear_velocity.y<1 && linear_velocity.y>-1 :
		return false
	else:
		return true