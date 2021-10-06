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
	
	pregunta.set_pregunta("La dirección IP")
	pregunta.set_respuestaA("Puede ser modificada manualmente en UNIX")
	pregunta.set_respuestaB("Es asignada por una entidad supranacional")
	pregunta.set_respuestaC("Es única para cada tarjeta de red")
	pregunta.set_respuestaD("Ninguna de las anteriores")
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
