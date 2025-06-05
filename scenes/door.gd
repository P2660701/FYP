extends TileMapLayer


func _on_area_2d_body_entered(body: Node2D):
	SceneSwitcher.goto_scene("res://scenes/end.tscn")
