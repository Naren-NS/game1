#extends CharacterBody2D
#
#@export var SPEED=100
#
#var dir:float
#var spawnPos:Vector2
#var spawnRot:float
#
#func _ready() -> void:
	#globalPos=spawnPos
	#globalRot=spawnRot
	#
	#
#func _physics_process(delta: float) -> void:
	#velocity=Vector2(0,-SPEED).rotated(dir)
	#move_and_slide()