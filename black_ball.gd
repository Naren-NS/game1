extends Node2D

var speed=800
var max_distance=100000
var distance_travelled=0
var shoot_direction=Vector2.ZERO

func _process(delta):
	var movement=shoot_direction*speed*delta
	position+=movement
	distance_travelled+=movement.length()
	
	if distance_travelled>=max_distance:
		queue_free()
		
	
