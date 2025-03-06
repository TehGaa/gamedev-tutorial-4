extends Node2D

@export var obstacle : PackedScene

@export var range1 = -1000
@export var range2 = 1000

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(range1, range2)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	await get_tree().create_timer(1).timeout
	repeat()
