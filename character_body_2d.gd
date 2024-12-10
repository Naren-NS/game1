extends CharacterBody2D

var BlackBall=preload("res://black_ball.tscn")

#physics process function is what the engine will hook on to and will call it every time it needs to calculate the physics update
func _physics_process(_delta: float) -> void:
	#used to store the movement direction
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")#calculates direction vector as a 2D vector value
	#gives us speed and direction in the form of 1 2D vector
	velocity = direction * 600 #built in function of characterbody2D
	if Input.is_action_just_pressed("shoot"):
		shoot_ball()
	move_and_slide()

func shoot_ball():
	var ball_instance=BlackBall.instantiate()
	ball_instance.position=global_position 
	var mouse_position=get_global_mouse_position()
	var shoot_direction=(mouse_position-global_position).normalized()
	ball_instance.shoot_direction=shoot_direction
	get_parent().add_child(ball_instance)
