extends Area2D

func _on_body_entered(body: Node2D) -> void:
	changeScene()



func changeScene():
		get_tree().change_scene_to_file("res://Level 1.tscn")
