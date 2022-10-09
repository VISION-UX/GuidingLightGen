extends Sprite2D
@export var maxSeed = 100
@export var frameTimerTime = 1
var frameTimer = 0

func _process(delta):
	frameTimer += 1 # make sure we dont get any glitches
	if frameTimer == frameTimerTime:
		frameTimer = 0 
		if texture.noise.seed >= maxSeed: #reset if it gets too high otherwise we may reach a limit in the future
			texture.noise.seed = 0
		texture.noise.seed += 1 #add to the noise
		
	
