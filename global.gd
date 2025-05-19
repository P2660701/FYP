extends Node

## autoloaded scene which is globally accessible while the project is in execution

# maybe I'll need a dictionary as well
# comes back with empty script file error
# before changing scenes you want to save data

var player_position = Vector2.ZERO
var health = 9
var ores_collected = 0


	
#var current_scene = null

# current_scene, reload_current_scene and unload_current_scene are accessible from scenetree object

# Called when the node enters the scene tree for the first time.
#func _ready():
	#var root = get_tree().root # stores the root node of the scene tree which automatically saves all the child nodes
	#current_scene = root.get_child(-1) # gets a child node from the tree. -1 is the final node in the tree
	#current_scene = get_tree().current_scene
	
#func goto_scene(path):
	#_deferred_goto_scene.call_deferred(path) # call.deferred only runs once all the code from the current_scene is complete
	## deferred so the scene isn't freed while in execution
	
#func _deferred_goto_scene(path):
	#current_scene.free() # releases current object from memory

	#var new = ResourceLoader.load(path) # loads the resource from a given path and caches the result for later access
	
	#current_scene = new.instantiate() # creates a class instance from the resource loaded
	
	#get_tree().root.add_child(current_scene)
	# add the new scene to the active scene as a child of root
	# OR
	#get_tree().current_scene = current_scene # so it's compatible with change_scene_to_file() API
	
## What I want is to save data from the level scene back to the educational content 
## instance then transition back to the level reloading the saved data from the level
