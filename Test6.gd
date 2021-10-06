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
	
	pregunta.set_pregunta("Si tenemos la siguiente dirección de broadcast 95.26.35.159, indicar a que subred pertenece.")
	pregunta.set_respuestaA("95.26.35.144/30")
	pregunta.set_respuestaB("95.26.35.144/29")
	pregunta.set_respuestaC("95.26.35.128/27")
	pregunta.set_respuestaD("95.26.35.128/25")
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
