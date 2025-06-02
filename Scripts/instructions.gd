## transitions into the main level scene

extends AcceptDialog

func _on_confirmed():
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")


func _on_canceled():
	SceneSwitcher.goto_scene("res://scenes/Level.tscn")
