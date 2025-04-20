extends CharacterBody2D
var speed = 100
var player = null
var direction = Vector2(1, 0)  # Movimiento hacia la derecha inicialmente

func _ready() -> void:
		player = get_tree().get_nodes_in_group("Player")[0]
		if player != null:
			print("Es nulo")
func _process(delta):
	position += direction * speed * delta
	
func _physics_process(delta):
		pass
