extends CharacterBody2D

@export var speed = 100
@export var gravity = 100
@export var jump_speed = 1000
var velocidad = Vector2.ZERO
var gravedad = 98.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("izquierda","derecha")
	velocity.x = speed * direction
	velocity.y = velocity.y + gravity
	#if is_on_floor()
	#	velocity.y = velocity.y + gravity * delta
	
	var jump_pressed = Input.is_action_just_pressed("salto")
	if  jump_pressed and  is_on_floor():
		velocity.y = velocity.y - jump_speed
	move_and_slide()
	
