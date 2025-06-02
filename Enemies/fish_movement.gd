extends PathFollow2D

#@onready var sprite = $PathFollow2D/AnimatedSprite2D as AnimatedSprite2D
#@onready var anim = $PathFollow2D/AnimatedSprite2D/AnimationPlayer as AnimationPlayer

var speed = 0.005
var reverse_speed = -0.005
var target = 1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	bouncing_movement(delta)
	
func loop_movement(delta):
	progress_ratio += delta * speed

func bouncing_movement(delta):
	if progress_ratio < target:
		progress_ratio += delta * speed
		target = 1
		#sprite.flip_h = false
	elif progress_ratio > target:
		target = 0
		progress_ratio += delta * reverse_speed
		#sprite.flip_h = true
