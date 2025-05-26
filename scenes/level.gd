extends Node2D

#func save_state():
#	var node_to_save = self
#	var scene = PackedScene.new()
#	scene.pack(node_to_save)
#	ResourceSaver.save(scene, "res://scenes/Level.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var node_to_save = $World
	var scene = PackedScene.new()
	scene.pack(node_to_save)
	ResourceSaver.save(scene,"res://scenes/Level.tscn")

# might be better potentially under _process()
# need to instantiate after saving and load when the scene switches back


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#if SceneSwitcher
#	save_state()

@onready var level_save = get_node("/root/World")

func saving():
	var packed_scene = PackedScene.new()
	packed_scene.pack(level_save)
	ResourceSaver.save(packed_scene, "res://scenes/Level.tscn")
