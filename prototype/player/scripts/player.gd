class_name player extends CharacterBody2D

#region /// state Machine variables
var states : Array[PlayerState]
var current_state : PlayerState : 
	get : return states.front()
var previous_state : PlayerState :
	get : return states[1]

#endregion

#region /// standard variables
var direction : Vector2 = Vector2.ZERO
var gravity : float = 980
#endregion

func _process(_delta: float) -> void:
	
	pass

func _physics_process(_delta: float) -> void:
	
	pass
	
	move_and_slide()
	pass
