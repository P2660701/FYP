extends Area2D

func _on_body_entered(body : CharacterBody2D):
	
	global.player_position = global_position
	print(global.player_position)
	global.ores_collected += 1
	print(global.ores_collected)
	queue_free()
	
	SceneSwitcher.goto_scene("res://scenes/educational_content/ai_content.tscn")
