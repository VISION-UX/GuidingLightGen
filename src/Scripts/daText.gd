extends Label

var myAss:Array = ["You died to..", "What..?", "Rush, Ambush, Hide and Halt!", "That's not possible!", "Sorry player!"]
@export var Enabled = false
@export var frameTimerTime = 60
var frameTimer = 0
var frames = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = myAss[frames]
	frames = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Enabled:
		frameTimer += 1 # make sure we dont get any glitches
		if frameTimer == frameTimerTime:
			
			frameTimer = 0 
			
			if frames <= 4:
				$poopoopaa.play("fadeStart")
				self.text = myAss[frames]
				$poopoopaa.play("fadeEnd")
				frames += 1
				
			else:
				$poopoopaa.play("fadeStart")
				Enabled = false
				self.visible = false

