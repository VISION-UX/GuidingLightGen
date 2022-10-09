extends Node2D
var myassInst:Array
# Called when the node enters the scene tree for the first time.
func _ready():
	$Text.myAss = myassInst

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Text.myAss = myassInst
	print(self.myassInst)
	if Input.is_key_pressed(KEY_R):
		get_tree().change_scene_to_file("res://Scenes/death.tscn")
