extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_Player_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Player":
		body.speed = 100
		


func _on_Player_body_exited(body: CharacterBody2D) -> void:
	if body.name == "Player":
		body.speed = 400


func _on_jebakan_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.position.y = 600
