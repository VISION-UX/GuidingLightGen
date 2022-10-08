extends Sprite2D
@export var maxSeed = 100
var FPS = 2 #zamnolama
@export var frameTimerTime = 1
var frameTimer = 0
var framecur = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	frameTimer += 1 # make sure we dont get any glitches
	if frameTimer == frameTimerTime:
		
		frameTimer = 0 
		if self.texture.noise.seed >= maxSeed: #reset if it gets too high otherwise we may reach a limit in the future
			self.texture.noise.seed = 0
		self.texture.noise.seed += 1 #add to the noise
		
	
