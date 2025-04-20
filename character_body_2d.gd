extends CharacterBody2D

@export var speed = 200

func _physics_process(delta: float) -> void:
	var directionX = Input.get_axis("izquierda","derecha")
	velocity.x = speed * directionX
	#velocity.y = speed * direction
	var directionY = Input.get_axis("salto","abajo")
	velocity.y = speed * directionY
	#velocity.y = speed * direction

	move_and_slide()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Enemigo ataco") 
