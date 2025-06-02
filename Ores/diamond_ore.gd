extends Area2D
## Ore that switches scene to display educational content once collided with

# possibly changes scenes before queue_freeing because the functions defined there are global so it is prioritised

## script attached to the scene root


func _on_body_entered(_body: CharacterBody2D):
	
	global.player_position = global_position
	print(global.player_position)
	global.ores_collected += 1
	print(global.ores_collected)
	queue_free()
	
	SceneSwitcher.goto_scene("res://scenes/educational_content/educational_content.tscn")


# SceneSwitcher creates a new instance of the scene in question and there the diamond node may still be there
# still there once the level scene returns which can be figured out later or keep so it can be used for reference
