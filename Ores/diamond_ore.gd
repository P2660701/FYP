extends Area2D
## Collectable ore that disapears and displays education content once touched

@onready var body = $Player as CharacterBody2D

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		queue_free() # deletes the node at the end of the current frame might be safer to remove_child instead
