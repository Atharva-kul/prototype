class_name PlayerState extends Node

var player : player
var next_state : PlayerState = null

#region /// state reference
# reference to alll other statwes
#endregion

func _init() -> void:
	pass
	
func enter() -> void:
	pass
	
func exit() -> void:
	pass
	
	
func handle_input(_event : InputEvent) -> PlayerState:
	return next_state
		
func physics_process(_delta: float) -> PlayerState:
	return next_state
