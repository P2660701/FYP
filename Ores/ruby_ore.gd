extends Area2D

@onready var body = $Player as CharacterBody2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		queue_free()
