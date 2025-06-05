extends AcceptDialog

## transitions back to the main level scene

func _on_confirmed():
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")

func _on_canceled():
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")
