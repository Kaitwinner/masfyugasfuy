extends Node

var is_paused = false

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		toggle_pause()
		get_viewport().set_input_as_handled()


func toggle_pause():
	var new_pause_state = !get_tree().paused 
	get_tree().paused = new_pause_state  
	$PauseMenu.visible = new_pause_state  
