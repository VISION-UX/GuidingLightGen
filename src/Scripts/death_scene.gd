extends Node2D

var initial_lines: Array = []

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_R):
		var scene: Node2D = load("res://Scenes/death.tscn").instantiate()
		scene.initial_lines = initial_lines
		
		var root: Node = get_parent()
		root.remove_child(self)
		root.add_child(scene)
	
	if Input.is_action_just_pressed("ui_cancel"):
		var scene: Node2D = load("res://main.tscn").instantiate()
		
		var root: Node = get_parent()
		root.remove_child(self)
		root.add_child(scene)
