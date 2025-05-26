extends AcceptDialog


func _on_confirmed():
	SceneSwitcher.goto_scene("res://scenes/instructions.tscn")

func _on_canceled():
	SceneSwitcher.goto_scene("res://scenes/instructions.tscn")
