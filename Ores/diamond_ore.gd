extends Area2D
## Collectable ore that disapears and displays education content once touched


# @onready var body = $Player as CharacterBody2D

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:


# possibly changes scenes before queue_freeing because the functions defined there are global so it is prioritised


	#if body.name == "Player":
		#get_tree().change_scene_to_file("res://scenes/educational_content.tscn") #scene tree class manages the main game loop
	#	get_tree().paused
		
		
	#save_game()
	# deletes the node at the end of the current frame might be safer to remove_child instead

## script attached to the scene root


func _on_body_entered(body: CharacterBody2D): # body -> characterbody2D
	
	global.player_position = global_position
	print(global.player_position)
	global.ores_collected += 1
	print(global.ores_collected)
	queue_free()
	SceneSwitcher.goto_scene("res://scenes/educational_content.tscn")


# SceneSwitcher creates a new instance of the scene in question and there the diamond node may still be there
# still there once the level scene returns which can be figured out later or keep so it can be used for reference
