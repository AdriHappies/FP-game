extends Spatial

var puntuacion = 600
var contador = 0
signal aumentar_contador()

onready var finish = preload("res://FinishMenu.tscn")


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Retos/Test.visible = false
	$Retos/RespuestaCorta.visible = false
	$Retos/Test2.visible = false
	$Retos/PreguntaCorta2.visible = false
	$Retos/Test3.visible = false
	$Retos/Test4.visible = false
	$Retos/Test5.visible = false
	$Retos/Test6.visible = false
	$Retos/Test7.visible = false
	$Retos/Test8.visible = false
	$Retos/Test9.visible = false
	$Retos/Test10.visible = false
	$Retos/Test11.visible = false
	$Retos/Test12.visible = false
	$Retos/Test13.visible = false
	$Retos/Test14.visible = false
	$Retos/Test15.visible = false
	$Pantallas/consoleScreen16.visible = false
	$Puntos/Puntuacion.text = String(puntuacion)
	$Pantallas/consoleScreen17.visible = false
	

func _on_Player_entrar_quiz():
	$Retos/Test.visible=true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Test_abrir_puerta():
		$Animaciones/Consola1.play("Consola1")
		$Retos/Test.visible = false
		emit_signal("aumentar_contador")
	

func _on_Player_entrar_preguntacorta():
	$Retos/RespuestaCorta.visible=true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)



func _on_RespuestaCorta_abrir_puerta():
		$Animaciones/Consola2.play("Consola2")
		$Retos/RespuestaCorta.visible=false
		emit_signal("aumentar_contador")


func _on_Test2_abrir_puerta():
	$Animaciones/Consola3.play("Consola3")
	$Retos/Test2.visible=false
	emit_signal("aumentar_contador")


func _on_Player_entrar_quiz2():
	$Retos/Test2.visible=true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Player_entrar_preguntacorta2():
	$Retos/PreguntaCorta2.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_PreguntaCorta2_abrir_puerta():
	$Animaciones/Consola4.play("Consola4")
	$Retos/PreguntaCorta2.visible = false
	emit_signal("aumentar_contador")

func _on_Test3_abrir_puerta():
	$Animaciones/Consola5.play("Conosla5")
	$Retos/Test3.visible=false
	emit_signal("aumentar_contador")

func _on_Player_entrar_quiz3():
	$Retos/Test3.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Player_entrar_quiz4():
	$Retos/Test4.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Player_entrar_quiz5():
	$Retos/Test5.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Player_entrar_quiz6():
	$Retos/Test6.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz7():
	$Retos/Test7.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz8():
	$Retos/Test8.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz9():
	$Retos/Test9.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz10():
	$Retos/Test10.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz11():
	$Retos/Test11.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz12():
	$Retos/Test12.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz13():
	$Retos/Test13.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz14():
	$Retos/Test14.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	
func _on_Player_entrar_quiz15():
	$Retos/Test15.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	


func _on_Test4_abrir_puerta():
	$Animaciones/Consola6.play("Consola6")
	$Retos/Test4.visible=false
	emit_signal("aumentar_contador")
func _on_Test5_abrir_puerta():
	$Animaciones/Consola7.play("Conosla7")
	$Retos/Test5.visible=false
	emit_signal("aumentar_contador")
func _on_Test6_abrir_puerta():
	$Animaciones/Consola8.play("Conosola8")
	$Retos/Test6.visible=false
	emit_signal("aumentar_contador")
func _on_Test7_abrir_puerta():
	$Animaciones/Consola9.play("Consola9")
	$Retos/Test7.visible=false
	emit_signal("aumentar_contador")
func _on_Test8_abrir_puerta():
	$Animaciones/Consola10.play("Consola10")
	$Retos/Test8.visible=false
	emit_signal("aumentar_contador")
func _on_Test9_abrir_puerta():
	$Animaciones/Consola11.play("Consola11")
	$Retos/Test9.visible=false
	emit_signal("aumentar_contador")
func _on_Test10_abrir_puerta():
	$Animaciones/Consola12.play("Consola12")
	$Retos/Test10.visible=false
	emit_signal("aumentar_contador")
func _on_Test11_abrir_puerta():
	$Animaciones/Consola13.play("Consola13")
	$Retos/Test11.visible=false
	emit_signal("aumentar_contador")
func _on_Test12_abrir_puerta():
	$Animaciones/Consola14.play("Consola14")
	$Retos/Test12.visible=false
	emit_signal("aumentar_contador")
func _on_Test13_abrir_puerta():
	$Animaciones/Consola15.play("Consola15")
	$Retos/Test13.visible=false
	emit_signal("aumentar_contador")
func _on_Test14_abrir_puerta():
	$Animaciones/Consola16.play("Consola16")
	$Retos/Test14.visible=false
func _on_Test15_abrir_puerta():
	$Animaciones/Consola17.play("Consola17")
	$Pantallas/consoleScreen16.visible = true
	$Retos/Test15.visible=false


func _on_Timer_timeout():
	if puntuacion > 0:
		puntuacion -= 1
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		var inFinish = finish.instance()
		add_child(inFinish)


func _on_RespuestaCorta_intento_gastado():
	if puntuacion - 5 > 0:
		puntuacion -= 5
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)
		


func _on_Test_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test2_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_PreguntaCorta2_intento_gastado():
	if puntuacion - 5 > 0:
		puntuacion -= 5
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test4_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test5_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test6_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test7_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test8_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test9_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test10_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test11_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test12_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test13_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test14_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Test15_intento_gastado():
	if puntuacion - 20 > 0:
		puntuacion -= 20
		$Puntos/Puntuacion.text = String(puntuacion)
	else:
		puntuacion = 0
		$Puntos/Puntuacion.text = String(puntuacion)


func _on_Spatial_aumentar_contador():
	contador+=1
	if contador == 15:
		$Pantallas/consoleScreen17.visible = true
