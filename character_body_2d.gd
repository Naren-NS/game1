extends CharacterBody2D

#physics process function is what the engine will hook on to and will call it every time it needs to calculate the physics update
func _physics_process(delta: float) -> void:
	#used to store the movement direction
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")#calculates direction vector as a 2D vector value
	#gives us speed and direction in the form of 1 2D vector
	velocity = direction * 600 #built in function of characterbody2D
	
	move_and_slide()
