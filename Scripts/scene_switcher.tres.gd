## An autoloaded scene which is globally accessible while the project is in execution
## instances the new scene being called then transitions

extends Node

var current_scene = null


func _ready():
	var root = get_tree().root # stores the root node of the scene tree which automatically saves all the child nodes
	current_scene = root.get_child(-1) # gets a child node from the tree. -1 is the final node in the tree
	current_scene = get_tree().current_scene
	
func goto_scene(path):
	_deferred_goto_scene.call_deferred(path) # call.deferred only runs once all the code from the current_scene is complete
	
	# deferred so the scene isn't freed while in execution
	
func _deferred_goto_scene(path):
	current_scene.free() # releases current object from memory

	var new = ResourceLoader.load(path) # loads the resource from a given path and caches the result for later access
	current_scene = new.instantiate()
	
	get_tree().root.add_child(current_scene)
	# add the new scene to the active scene as a child of root
	# OR
	get_tree().current_scene = current_scene # so it's compatible with change_scene_to_file() API
	
