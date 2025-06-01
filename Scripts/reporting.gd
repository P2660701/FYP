extends AcceptDialog


func _on_confirmed():
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")

func _on_canceled() -> void:
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")
