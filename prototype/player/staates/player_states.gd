class_name PlayerState extends Node

var player_node : player
var next_state : PlayerState = null

#region /// state reference
# reference to all other states
#endregion

func init() -> void:
	#print("init ", name)
	pass
	
func enter() -> void:
	#print("enter ", name)
	pass
	
func exit() -> void:
	#print("exit ", name)
	pass
	
	
func handle_input(_event : InputEvent) -> PlayerState:
	
	return
		
	#print("Input ", name)
	return next_state
	
func process(_delta: float) -> PlayerState:
	#print("P ", name, _delta)
	player_node.position.x += 1
	return next_state
		
func physics_process(_delta: float) -> PlayerState:
	#print("Plysics works")
	return next_state
