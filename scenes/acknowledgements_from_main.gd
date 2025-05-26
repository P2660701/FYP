extends Button

func _ready() -> void:
	if Input.is_action_pressed("Left Click"):
		_on_pressed()
		
func _on_pressed():
	SceneSwitcher.goto_scene("res://scenes/acknowledgements_page.tscn")
