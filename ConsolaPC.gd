extends Control

signal respuesta_correcta(valor)
signal intento_gastado()

export var pregunta="Pregunta"

export var respuesta_correcta="A"

var intento=1

func _ready():
	completar_preguntas()
	

func set_pregunta(pregunta_):
	pregunta=pregunta_.pregunta
	respuesta_correcta=pregunta_.respuesta_correcta
	
	completar_preguntas()


func completar_preguntas():
	var texto=pregunta + "\n";
	
	$Label.text=texto
	$Intento.text="Intento: "+str(intento)

func _on_LineEdit_text_entered(new_text):
	var correcto=false

	if respuesta_correcta==new_text:
		correcto=true
		emit_signal("respuesta_correcta",correcto)
	else:
		correcto=false
		emit_signal("respuesta_correcta",correcto)
		emit_signal("intento_gastado")
	



