extends Control



func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true
	$Controles.visible = false



func _on_Resume_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_tree().paused = false
	queue_free()
	


func _on_Quit_pressed():
	get_tree().quit()





func _on_Control_pressed():
	$Controles.visible = true


func _on_Controles_volver():
	$Controles.visible = false
