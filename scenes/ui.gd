## needs to be an overlay to the main level scene
## controlling the incrementation when events occur with the player character body
## signals may need to be transmitted between scens in that case

extends Control

var health = 100 # if you do it in a function block then it'll be only be availble in that scope of the script

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
