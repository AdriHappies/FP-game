extends Control

signal volver()


func _on_Button_pressed():
	emit_signal("volver")
