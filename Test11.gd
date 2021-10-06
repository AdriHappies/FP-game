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
	
	pregunta.set_pregunta("¿A qué grupo de IPs pertenece 192.168.50.156 si la máscara de la red es 21?")
	pregunta.set_respuestaA("192.168.48.0 -> 192.168.55.255")
	pregunta.set_respuestaB("192.168.49.0 -> 192.168.56.255")
	pregunta.set_respuestaC("192.168.50.0 -> 192.168.57.255")
	pregunta.set_respuestaD("192.168.47.0 -> 192.168.54.255")
	pregunta.set_respuesta_correcta("A")
	
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
