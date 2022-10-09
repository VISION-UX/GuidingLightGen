extends Sprite2D

# yes
@export var max_seed: int = 1000
# time limit stuffs
@export var time_between_noise_changes: float = (1.0 / 60.0) * 2.0
var timer: float = 0.0
# easy accesser to the noise texture settings
@onready var noise: FastNoiseLite = texture.noise

func _process(delta: float) -> void:
	timer += delta # consistent between framerates
	
	if timer >= time_between_noise_changes:
		timer = 0.0
		noise.seed = clamp(noise.seed + 1.0, 0.0, max_seed) # clamp noise.seed from 0 to max_seed (1000)
