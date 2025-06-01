extends Area2D

func _on_body_entered(_body : CharacterBody2D):
	
	global.player_position = global_position
	print(global.player_position)
	global.ores_collected += 1
	print(global.ores_collected)
	queue_free()

	SceneSwitcher.goto_scene("res://scenes/educational_content/info_7.tscn")

# keeps colliding in the same spot which means it loops back
# SceneSwitcher creates a new instance of the scene in question and there the diamond node may still be there
# still there once the level scene returns which can be figured out later or keep so it can be used for reference
