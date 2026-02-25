extends Control

@onready var button_main_menu : Button = %ButtonMainMenu
@onready var label_points : Label = %LabelPoints
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label_points.text = str(Global.points)
	button_main_menu.pressed.connect(button_pressed)

func button_pressed() -> void:
	get_tree().change_scene_to_file("res://base/mainmenu.tscn")
