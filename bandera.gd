extends Area2D

@export var next_scence_name : String
var  nameScene =  "res://" 
var term = ".tscn"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		changeScene()

func changeScene():
		get_tree().change_scene_to_file(nameScene +
		 next_scence_name + term)
