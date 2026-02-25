extends Control



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@onready var button_play : Button = %Play
@onready var button_exit : Button = %Exit

func _ready() -> void:
	button_play.pressed.connect(play_button_pressed)

func play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://base/balatro/Kartas.tscn")
