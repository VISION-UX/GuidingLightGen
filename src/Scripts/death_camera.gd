extends Camera2D

# shake settings
@export var shake_intensity: float = 1.0
@export var shake: bool = false
@export var shake_time_max: float = (1.0 / 60.0) * 3.0
var shake_timer: float = 0.0

# wibble settings
@export var wibble_intensity: float = 10.0
@export var wibble: bool = false
@export var wibble_time_max: float = (1.0 / 60.0) * 30.0
var wibble_timer: float = 0.0

# randomization stuffs
var temp_x = 0.0
var temp_y = 0.0
var temp_r = 0.0

func _process(delta: float) -> void:
	wibble_timer += delta # consistent frameratings
	shake_timer += delta
	
	if wibble_timer >= wibble_time_max:
		temp_x = randf_range(0.0 - wibble_intensity, wibble_intensity)
		temp_y = randf_range(0.0 - wibble_intensity, wibble_intensity)
		temp_r = randf_range(0.0 - wibble_intensity / 6.0, wibble_intensity / 6.0)
		
		wibble_timer = 0.0
	
	offset.x = lerp(offset.x, temp_x, delta * 0.5)
	offset.y =  lerp(offset.y, temp_y, delta * 0.5)
	rotation = lerp_angle(rotation, deg_to_rad(temp_r), delta * 0.5)
	
	if shake_timer >= shake_time_max:
		shake_timer = 0.0
		
		if shake:
			temp_x = randf_range(0.0 - shake_intensity, shake_intensity)
			temp_y = randf_range(0.0 - shake_intensity, shake_intensity)
			temp_r = randf_range(0.0 - shake_intensity, shake_intensity)
			
			rotation = deg_to_rad(temp_r)
			offset.x = temp_x * 10.0
			offset.y = temp_y * 10.0
			
			if OS.is_debug_build():
				print("trans x:" + str(temp_x) + " y: " + str(temp_y) + " r: " + str(temp_r)) # for debug
		
