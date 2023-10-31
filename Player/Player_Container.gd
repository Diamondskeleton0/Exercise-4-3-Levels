extends Node2D

@onready var Player = load("res://Player/Player.tscn")
var starting_position


func _ready():
	var spawn = get_node("/root/Game/Spawn/Sprite2D")
	starting_position = spawn.position


func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instantiate()
		player.position = starting_position
		add_child(player)
