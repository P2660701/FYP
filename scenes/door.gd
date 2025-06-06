## transitions to the end scene

extends Area2D


func _on_body_entered(body: CharacterBody2D):
	SceneSwitcher.goto_scene("res://scenes/end.tscn")
