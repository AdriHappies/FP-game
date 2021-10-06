extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true
	
	
	

func _on_Restart_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	get_tree().paused = false
	queue_free()
	get_tree().reload_current_scene()
	
	


func _on_Quit_pressed():
	get_tree().quit()


func _on_Spatial_mostrar_puntuacion(valor):
	pass # Replace with function body.
