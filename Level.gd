extends Node2D

var launched = false



func pause():
	get_tree().paused= true
	$Button/Button.show()
	$pause.hide()
	set_modulate(Color(0.5, 0.5, 0.5, 1))



func _physics_process(delta):
	if Input.is_action_just_pressed("ui_select") and ! launched:
		$Bird.linear_velocity = Vector2(400, -280)
		$tire.play()
		launched = true
	if Input.is_action_just_pressed("ui_cancel"):
		pause()

func _on_pause_pressed():
	pause()
