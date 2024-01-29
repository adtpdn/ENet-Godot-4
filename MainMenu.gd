extends Control

# Define Location of Server and Client
@export_file("*.tscn") var server_scene
@export_file("*.tscn") var client_scene

# Define Client & Server Button inside a scene hierarchy
@onready var client_button = $ClientButton
@onready var server_button = $ServerButton


func _ready():
	server_button.grab_focus()

func _on_server_button_pressed():
	# get the node inside the tree hierachy
	get_tree().change_scene_to_file('res://Server.tscn')

func _on_client_button_pressed():
	get_tree().change_scene_to_file('res://Client.tscn')
