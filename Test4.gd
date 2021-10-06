extends Node2D

signal abrir_puerta()
signal intento_gastado()
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	var pregunta=coger_pregunta()
	$Consola.set_pregunta(pregunta)
	$Consola.visible=true
	
	

	
	
	
func coger_pregunta():
	var pregunta
	
	pregunta=Pregunta.new()
	
	pregunta.set_pregunta("¿Qué IPs abarca el grupo 10.0.4.0/23?")
	pregunta.set_respuestaA("10.0.2.0 -> 10.0.3.127")
	pregunta.set_respuestaB("10.0.2.0 -> 10.0.3.0")
	pregunta.set_respuestaC("10.0.2.0 -> 10.0.3.255")
	pregunta.set_respuestaD("10.0.2.0 -> 10.0.3.63")
	pregunta.set_respuesta_correcta("C")
	
	return pregunta


func _on_Consola_respuesta_correcta(correcta):
	if correcta:
		$Consola.visible=false
		emit_signal("abrir_puerta")
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	else:
		$Consola.intento+=1
		$Consola.completar_preguntas()


func _on_Consola_intento_gastado():
	emit_signal("intento_gastado")
