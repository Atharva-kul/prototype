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

func _ready() -> void:
	#initialize states
	initialize_staates()
	
	pass

func _process(_delta: float) -> void:
	update_direction()
	change_state(current_state.process(_delta))
	
	pass

func _unhandled_input(event: InputEvent) -> void:
	change_state(current_state.handle_input(event))
	pass

func _physics_process(_delta: float) -> void:
	velocity.y += gravity * _delta
	move_and_slide()
	change_state(current_state.physics_process(_delta))
	

	pass
	
	move_and_slide()
	pass

func initialize_staates() -> void:
	
	states = []
	#gather states
	for c in $States.get_children():
		if c is PlayerState:
			states.append(c)
			c.player_node =  self
		pass
		if states.size() == 0:
			return
	
	for state in states:
		state.init()
	
	#state states
	change_state(current_state)
	current_state.enter()
	pass

func change_state(new_state: PlayerState) -> void:
	if new_state == null:
		#print("nothing")
		return
	elif new_state == current_state:
		#print("equal")
		return
	
	if current_state:
		current_state.exit()
		
	states.push_front(new_state)
	current_state.enter()
	
	states.resize(3)
	pass

func update_direction():
	var prev_direction: Vector2 = direction
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	pass
