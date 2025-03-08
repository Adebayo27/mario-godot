extends Area2D
@export var next_level_path: String = "res://scenes/level2.tscn"

func _ready() -> void:
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	# ensure only player triggers transition 
	if body is Player:
		# transition to level 2
		call_deferred("change_level")

func change_level():
	get_tree().change_scene_to_file(next_level_path)
