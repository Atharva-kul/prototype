class_name player extends CharacterBody2D


func _process(_delta: float) -> void:
	
	pass

func _physics_process(_delta: float) -> void:
	
	velocity.x = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x = -90
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 90
	velocity.y += 900 * _delta
	
	move_and_slide()
	pass
