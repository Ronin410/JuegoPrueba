extends CharacterBody2D

@export var speed = 200
@export var gravity = 50
@export var jump_speed = 900

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
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Entro") # Replace with function body.
