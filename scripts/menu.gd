extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/PlayButton.connect("pressed", Callable(self, "_on_play_button_pressed"))
	$VBoxContainer/QuitButton.connect("pressed", Callable(self, "_on_quit_button_pressed"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
func _on_quit_button_pressed():
	get_tree().quit()
