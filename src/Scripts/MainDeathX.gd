extends Node2D
var myassInst:Array

func _process(delta):
	$Text.myAss = myassInst
	if Input.is_key_pressed(KEY_R):
		get_tree().reload_current_scene()
