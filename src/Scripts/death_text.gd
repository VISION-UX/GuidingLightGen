extends Label

# cool variabler
@onready var animator: AnimationPlayer = $Animator

# line stuffs
@export var lines: Array = []
var line: int = 0

# time limit settings
@export var time_between_text_changes: float = 10.0
var timer: float = 0.0

# self explanatory
@export var enabled: bool = false

func _ready() -> void:
	if len(lines) == 0:
		lines = get_parent().initial_lines
	
	text = lines[line]
	line = 1

func _process(delta: float) -> void:
	if enabled:
		timer += delta
		if timer >= time_between_text_changes:
				timer = 0.0
				
				if line < len(lines):
					animator.play("fadeEnd")
					text = lines[line]
					line += 1
				else:
					animator.play("fadeStart")
					enabled = false
					visible = false
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			if timer >= time_between_text_changes:
				timer = 0.0
				
				if line < len(lines):
					animator.play("fadeEnd")
					text = lines[line]
					line += 1
				else:
					animator.play("fadeStart")
					enabled = false
					visible = false
