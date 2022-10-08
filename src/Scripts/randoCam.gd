extends Camera2D
@export var intensity = 1
@export var intensityShak = 1
@export var shak = false
@export var funkyWibble = false
@export var maxSeed = 100
@export var frameTimerTime = 2
@export var frameTimerTimeWIBBLE = 30
var frameTimer = 0
var frameTimerWIBBLE = 0
var tempx = 0.0
var tempy = 0.0
var tempr = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	frameTimerWIBBLE += 1 # make sure we dont get any glitches
	if frameTimerWIBBLE == frameTimerTimeWIBBLE:
		tempx = randf_range(0 - intensity ,intensity)
		tempy = randf_range(0 - intensity ,intensity)
		tempr = randf_range(0 - intensity ,intensity)
		frameTimerWIBBLE = 0 
	offset.x = lerp(offset.x, tempx, 0.0125)
	offset.y =  lerp(offset.y, tempy, 0.0125)
	rotation = lerp_angle(rotation, deg_to_rad(tempr), 0.0125)
	frameTimer += 1 # make sure we dont get any glitches
	if frameTimer == frameTimerTime:
		
		frameTimer = 0 
		if shak:
			
			var tempx = 0
			var tempy = 0
			var tempr = 0
			tempx = randf_range(0 - intensityShak ,intensityShak)
			tempy = randf_range(0 - intensityShak ,intensityShak)
			tempr = randf_range(0 - intensityShak ,intensityShak)
			rotation = deg_to_rad(tempr*2)
			offset.x = tempx*10
			offset.y = tempy*10
			print("trans x:"+ str(int(tempx*10)) + " y: " + str(int(tempy*10)) + " r: " + str(int(tempr*10)) ) # for debug
		
