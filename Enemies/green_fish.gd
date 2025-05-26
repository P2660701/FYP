extends AnimatableBody2D


const SPEED = 300.0

@onready var anim = $AnimationPlayer as AnimationPlayer
@onready var sprite = $AnimatedSprite2D as AnimatedSprite2D

func _physics_process(delta):

#	var velocity.y = 0
	var direction = Vector2.RIGHT
	constant_linear_velocity = Vector2(-5, 0)
	
	if direction == Vector2(1,0):
		sprite.flip_h = false
	else:
		sprite.flip_h = true
		
	#clamp()
	sync_to_physics

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#var direction := Input.get_axis("ui_left", "ui_right")
#if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
