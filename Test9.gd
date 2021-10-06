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
	
	pregunta.set_pregunta("Las direcciones de tipo B en IPv4: ")
	pregunta.set_respuestaA("incluyen entre ellas a la dirección 193.168.25.73")
	pregunta.set_respuestaB("comienzan por '110'")
	pregunta.set_respuestaC("destina 16 bits para los sistemas")
	pregunta.set_respuestaD("es utilizada para direcciones multicast")
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
