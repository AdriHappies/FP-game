extends Node

class_name Pregunta

var pregunta
var respuestaA
var respuestaB
var respuestaC
var respuestaD
var respuesta_correcta

func set_pregunta(pregunta_):
	pregunta=pregunta_
	
func set_respuestaA(respuesta_):
	respuestaA=respuesta_
	
func set_respuestaB(respuesta_):
	respuestaB=respuesta_

func set_respuestaC(respuesta_):
	respuestaC=respuesta_

func set_respuestaD(respuesta_):
	respuestaD=respuesta_

func set_respuesta_correcta(respuesta_):
	respuesta_correcta=respuesta_
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
