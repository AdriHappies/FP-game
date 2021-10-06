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
	
	pregunta.set_pregunta("¿Cuál de las siguientes direcciones es válida para un equipo conectado y accesible directamente desde Internet?")
	pregunta.set_respuestaA("256.198.234.12")
	pregunta.set_respuestaB("10.128.179.54")
	pregunta.set_respuestaC("192.139.234.12")
	pregunta.set_respuestaD("127.34.156.0")
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
