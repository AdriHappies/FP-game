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
	
	pregunta.set_pregunta("¿Cuál es la dirección de broadcast de la subred 172.17.11.32/27?")
	pregunta.set_respuestaA("172.17.11.255")
	pregunta.set_respuestaB("172.17.11.63")
	pregunta.set_respuestaC("172.17.11.47")
	pregunta.set_respuestaD("172.17.255.255")
	pregunta.set_respuesta_correcta("B")
	
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
