class_name Menu
extends Control

@onready var start_game = $MarginContainer/HBoxContainer/VBoxContainer/StartGame as Button
@onready var quit_game = $MarginContainer/HBoxContainer/VBoxContainer/QuitGame as Button
@onready var level_0 = preload("res://Scenes/level_0.tscn") as PackedScene

func _ready():
	start_game.button_down.connect(on_start_pressed)
	quit_game.button_down.connect(on_quit_pressed)

func on_start_pressed():
	get_tree().change_scene_to_packed(level_0)
	
func on_quit_pressed():
	get_tree().quit()
