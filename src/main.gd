extends Node2D

@onready var text: TextEdit = $Text

func on_start() -> void:
	var scene: Node2D = load("res://Scenes/death.tscn").instantiate()
	scene.initial_lines = text.text.split("\n")
	
	var root: Node = get_parent()
	root.remove_child(self)
	root.add_child(scene)
