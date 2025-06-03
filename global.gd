extends Node

## An autoloaded scene which is globally accessible while the project is in execution
## It stores variables that are included in the debugger's output
## The main function is to set the player's position and persist the ore count when a transition from an educational content scene is made back to the level scene

var player_position = Vector2.ZERO
var health = 9
var ores_collected = 0
	
## It is essentially used for saving and reloading data from the level
