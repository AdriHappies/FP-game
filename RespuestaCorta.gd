extends Node2D

signal abrir_puerta()
signal intento_gastado()

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	var pregunta=coger_pregunta()
	$ConsolaPC.set_pregunta(pregunta)
	$ConsolaPC.visible=true

func coger_pregunta():
	var pregunta
	pregunta=PreguntaCorta.new()
	pregunta.set_pregunta("¿Qué comando se usa para que un router cisco muestre su tabla de encaminamiento?")
	pregunta.set_respuesta_correcta("show ip route")
	return pregunta

func _on_ConsolaPC_respuesta_correcta(correcta):
	if correcta:
		$ConsolaPC.visible=false
		emit_signal("abrir_puerta")
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	else:
		$ConsolaPC.intento+=1
		$ConsolaPC.completar_preguntas()


func _on_ConsolaPC_intento_gastado():
	emit_signal("intento_gastado")
