extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func on_start():
	var scene = load("res://Scenes/death.tscn").instantiate()
	var script = load("res://Scripts/daText.gd")
	scene.myassInst = [$text1.text, $text2.text ,$text3.text, $text4.text, $text5.text]
	print(scene.myassInst)
	for i in self.get_child_count():
		remove_child(get_child(i))
	for i in self.get_child_count():
		remove_child(get_child(i))
	print(scene.myassInst)
	add_child(scene)
	print(scene.myassInst)
	
