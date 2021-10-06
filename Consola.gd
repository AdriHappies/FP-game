extends Control

signal respuesta_correcta(valor)
signal intento_gastado()

export var pregunta="Pregunta"
export var respuestaA="-"
export var respuestaB="-"
export var respuestaC="-"
export var respuestaD="-"

export var respuesta_correcta="A"

var intento=1

# Called when the node enters the scene tree for the first time.
func _ready():
	completar_preguntas()
	

func set_pregunta(pregunta_):
	pregunta=pregunta_.pregunta
	respuestaA=pregunta_.respuestaA
	respuestaB=pregunta_.respuestaB
	respuestaC=pregunta_.respuestaC
	respuestaD=pregunta_.respuestaD
	respuesta_correcta=pregunta_.respuesta_correcta
	
	completar_preguntas()
	
	
func completar_preguntas():
	var texto=pregunta+"\n";
	
	if respuestaA!=null:
		texto+=	"A) "+respuestaA+"\n"
	else:
		$BotonA.visible=false

	if respuestaB!=null:
		texto+=	"B) "+respuestaB+"\n"
	else:
		$BotonB.visible=false

	if respuestaC!=null:
		texto+=	"C) "+respuestaC+"\n"
	else:
		$BotonC.visible=false

	if respuestaD!=null:
		texto+=	"D) "+respuestaD+"\n"
	else:
		$BotonD.visible=false
		
	$Label.text=texto
	$Intento.text="Intento: "+str(intento)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BotonA_pressed():
	var correcto=false
	
	if respuesta_correcta=="A":
		correcto=true
		emit_signal("respuesta_correcta",correcto)
	else:
		correcto=false
		emit_signal("respuesta_correcta",correcto)
		emit_signal("intento_gastado")
	


func _on_BotonB_pressed():
	var correcto=false
	
	if respuesta_correcta=="B":
		correcto=true
		emit_signal("respuesta_correcta",correcto)
	else:
		correcto=false
		emit_signal("respuesta_correcta",correcto)
		emit_signal("intento_gastado")
	


func _on_BotonC_pressed():
	var correcto=false
	
	if respuesta_correcta=="C":
		correcto=true
		emit_signal("respuesta_correcta",correcto)
	else:
		correcto=false
		emit_signal("respuesta_correcta",correcto)
		emit_signal("intento_gastado")
	


func _on_BotonD_pressed():
	var correcto=false
	
	if respuesta_correcta=="D":
		correcto=true
		emit_signal("respuesta_correcta",correcto)
	else:
		correcto=false
		emit_signal("respuesta_correcta",correcto)
		emit_signal("intento_gastado")
	
