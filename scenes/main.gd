extends Spatial

export var time_left:int=100
export(String, FILE) var results_scene_path

onready var time_label:Label=$HUD/TimeLabel


func _ready() -> void:
	randomize()


func _on_time_tick() -> void:
	time_left-=1
	time_label.text="Time: "+String(time_left)
	if time_left<=0:
		on_game_finish()


func on_game_finish():
	get_tree().change_scene(results_scene_path)
