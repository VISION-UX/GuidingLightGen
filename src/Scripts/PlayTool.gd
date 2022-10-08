extends AnimationPlayer
@tool
@export var playa = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if playa:
		playa = false
		play("deathHHHH")
		$AudioStreamPlayer2d.deathVizz.Playing = true
		
