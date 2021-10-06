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
	
	pregunta.set_pregunta("La dirección IP 192.168.42.127")
	pregunta.set_respuestaA("Es una dirección de la red Internet, clase B")
	pregunta.set_respuestaB("Es una dirección de la red Internet")
	pregunta.set_respuestaC("Es una dirección de la red Internet, clase C")
	pregunta.set_respuestaD("Es una dirección de una red IP privada")
	pregunta.set_respuesta_correcta("D")
	
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
