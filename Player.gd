extends KinematicBody

#Señales para encender las consolas
signal entrar_quiz()
signal entrar_preguntacorta()
signal entrar_quiz2()
signal entrar_preguntacorta2()
signal entrar_quiz3()
signal entrar_quiz4()
signal entrar_quiz5()
signal entrar_quiz6()
signal entrar_quiz7()
signal entrar_quiz8()
signal entrar_quiz9()
signal entrar_quiz10()
signal entrar_quiz11()
signal entrar_quiz12()
signal entrar_quiz13()
signal entrar_quiz14()
signal entrar_quiz15()
#variables para el menú del terminal PC
var modoquiz = false
var modopreguntacorta = false
var modoquiz2 = false
var modopreguntacorta2 = false
var modoquiz3 = false
var modoquiz4 = false
var modoquiz5 = false
var modoquiz6 = false
var modoquiz7 = false
var modoquiz8 = false
var modoquiz9 = false
var modoquiz10 = false
var modoquiz11 = false
var modoquiz12 = false
var modoquiz13 = false
var modoquiz14 = false
var modoquiz15 = false

#Variable para final del nivel
onready var finish = preload("res://FinishMenu.tscn")

#variables para menu de pausa
onready var pausa = preload("res://PauseMenu.tscn")

#Variables de inicialización de la camara
var camera_angle = 0
var mouse_sensitivity = 0.3
var camera_change = Vector2()
 #Variables para inicializar la dirección y velocidad en un vector de 3 (x, y, z)
var velocity = Vector3()
var direction = Vector3()

#Variables de vuelo
const FLY_SPEED = 10
const FLY_ACCEL = 4
var flying = false

#Variables de andar (estar en el suelo)
var gravity = -9.8 *3
const MAX_SPEED = 7.5
const MAX_RUNNING_SPEED = 15
const ACCEL = 2
const DEACCEL = 6

#Variables de salto
var jump_height = 12
var in_air = 0
var has_contact = false

#Variables de deslizamiento
var MAX_SLOPE_ANGLE = 35

#función que comprueba si estamos en estado de volar o en el suelo
func _physics_process(delta):
	aim()
	if flying:
		fly(delta)
	else:
		walk(delta)

#Función que captura el movimiento del ratón
func _input(event):
	if event is InputEventMouseMotion:
		camera_change = event.relative
		
			

#Función para andar por el suelo, e interactuar con este
func walk(delta):
	#resetea la dirección del jugador
	direction = Vector3()
	
	# obtiene la rotación de la camara
	var aim = $Head/Camera.get_global_transform().basis
	
	#comprueba los inputs y cambia la dirección
	if Input.is_action_pressed("move_forward"):
		direction -= aim.z
	if Input.is_action_pressed("move_back"):
		direction += aim.z
	if Input.is_action_pressed("strafe_left"):
		direction -= aim.x
	if Input.is_action_pressed("strafe_right"):
		direction += aim.x
		
	direction.y = 0
	direction = direction.normalized() #normaliza la dirección
	
	#Comprobamos si estamos en contacto con el suelo
	if is_on_floor():
		has_contact = true
		var n =$Tail.get_collision_normal() #La normal del raycast esta en contacto con el suelo
		var floor_angle = rad2deg(acos(n.dot(Vector3(0, 1, 0))))
		if floor_angle > MAX_SLOPE_ANGLE: #cuando el angulo de la rampa es mayor que MAX_SLOPE_ANGLE actua la gravedad
			velocity.y += gravity * delta #haciendo que el personaje se deslize
		
	else: 
		if !$Tail.is_colliding(): #si la cola no esta colindando el suelo la gravedad actua
			has_contact = false
		velocity.y += gravity * delta
		
	if has_contact and !is_on_floor():
		move_and_collide(Vector3(0, -1, 0)) #mantiene el contacto del personaje con el suelo
	
	
	
	var temp_velocity = velocity
	temp_velocity.y = 0
	
	var speed
	if Input.is_action_pressed("move_sprint"): # si pulsamos "shift" pasamos a modo correr
		speed = MAX_RUNNING_SPEED
	else:
		speed = MAX_SPEED
	
	# donde iria el jugador a su máxima velocidad
	var target = direction * speed
	
	var acceleration
	if direction.dot(temp_velocity) > 0: #para que el personaje acelere o decelere, en función del movimiento que hagamos
		acceleration = ACCEL
	else:
		acceleration = DEACCEL
	
	#calcula una fracción de la distancia para ir
	temp_velocity = temp_velocity.linear_interpolate(target, acceleration * delta)
	
	velocity.x = temp_velocity.x
	velocity.z = temp_velocity.z
	
	#moverse
	velocity = move_and_slide(velocity, Vector3(0, 1, 0))
	
	if Input.is_action_just_pressed("jump") and has_contact: #sirve para realizar un salto
		has_contact = false
		velocity.y = jump_height
		
		
	#si cualquier modo es verdadero, y se pulsa E, se entra en la consola en cuestion
	if modoquiz:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz")
	if modopreguntacorta:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_preguntacorta")
	if modoquiz2:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz2")
	if modopreguntacorta2:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_preguntacorta2")
	if modoquiz3:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz3")
	if modoquiz4:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz4")
	if modoquiz5:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz5")
	if modoquiz6:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz6")
	if modoquiz7:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz7")
	if modoquiz8:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz8")
	if modoquiz9:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz9")
	if modoquiz10:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz10")
	if modoquiz11:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz11")
	if modoquiz12:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz12")
	if modoquiz13:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz13")
	if modoquiz14:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz14")
	if modoquiz15:
		if Input.is_action_just_pressed("interactuar"):
			emit_signal("entrar_quiz15")
	
	
	#Entrar en menu de pausa
	#Con la primera linea se evita que el usuario pause el juego mientras resuelve una pregunta
	if !modopreguntacorta and !modopreguntacorta2 and !modoquiz and !modoquiz2 and !modoquiz3 and !modoquiz4 and !modoquiz5 and !modoquiz6 and !modoquiz7 and !modoquiz8 and !modoquiz9 and !modoquiz10 and !modoquiz11 and !modoquiz12 and !modoquiz13 and !modoquiz14 and !modoquiz15 :
		if Input.is_action_just_pressed("pausa"):
			var inPausa = pausa.instance()
			add_child(inPausa)

func fly(delta):
	#resetea la dirección del jugador
	direction = Vector3()
	
	# obtiene la rotación de la camara
	var aim = $Head/Camera.get_global_transform().basis
	
	#comprueba los inputs y cambia la dirección
	if Input.is_action_pressed("move_forward"):
		direction -= aim.z
	if Input.is_action_pressed("move_back"):
		direction += aim.z
	if Input.is_action_pressed("strafe_left"):
		direction -= aim.x
	if Input.is_action_pressed("strafe_right"):
		direction += aim.x
		
	direction = direction.normalized()
	
	# donde iria el jugador a su máxima velocidad
	var target = direction * FLY_SPEED
	
	#calcula una fracción de la distancia para ir
	velocity = velocity.linear_interpolate(target, FLY_ACCEL * delta)
	
	#moverse
	move_and_slide(velocity)
	
	#Entrar en menu de pausa
	if Input.is_action_just_pressed("pausa"):
		var inPausa = pausa.instance()
		add_child(inPausa)
	
#Función para controlar la camara, haciendo que no gire mas alla de arriba o abajo (partirse el cuello)
func aim(): 
	if camera_change.length() > 0:
		$Head.rotate_y(deg2rad(-camera_change.x * mouse_sensitivity)) #deg2rad convierte los grados a radianes, y el -event es para que la camara rote en el sentido que movemos el raton
		
		var change = -camera_change.y * mouse_sensitivity
		if change + camera_angle < 90 and change + camera_angle > -90: #comprueba que no podamos mover la camara más alla de 90 y -90 grados (mirar arriba y abajo)
			$Head/Camera.rotate_x(deg2rad(change))
			camera_angle += change
			
		camera_change = Vector2()
	
	
	
#grupo de funciones para el uso de escaleras, en las cuales entramos en estado volador
func _on_Area_body_entered(body):
	if body.name == "Player":
		flying = true


func _on_Area_body_exited(body):
	if body.name == "Player":
		flying = false

#grupo de funciones para el uso de pantallas, en las cuales entramos en modotexto
func _on_AreaScreen1_body_entered(body):
	if body.name == "Player":
		modoquiz = true
	else:
		modoquiz = false


func _on_AreaScreen1_body_exited(body):
	if body.name == "Player":
		modoquiz = false

func _on_AreaScreen2_body_entered(body):
	if body.name == "Player":
		modopreguntacorta = true
	else:
		modopreguntacorta = false


func _on_AreaScreen2_body_exited(body):
	if body.name == "Player":
		modopreguntacorta = false



func _on_Final_body_entered(body):
	if body.name == "Player":
		var inFinish = finish.instance()
		add_child(inFinish)

func _on_AreaScreen3_body_entered(body):
	if body.name == "Player":
		modoquiz2= true
	else:
		modoquiz2= false


func _on_AreaScreen3_body_exited(body):
	if body.name == "Player":
		modoquiz2 = false


func _on_AreaScreen4_body_entered(body):
	if body.name == "Player":
		modopreguntacorta2 = true
	else:
		modopreguntacorta2 = false


func _on_AreaScreen4_body_exited(body):
	if body.name == "Player":
		modopreguntacorta2 = false


func _on_AreaScreen5_body_entered(body):
	if body.name == "Player":
		modoquiz3= true
	else:
		modoquiz3= false


func _on_AreaScreen5_body_exited(body):
	if body.name == "Player":
		modoquiz3 = false


func _on_AreaScreen6_body_entered(body):
	if body.name == "Player":
		modoquiz4= true
	else:
		modoquiz4= false


func _on_AreaScreen6_body_exited(body):
	if body.name == "Player":
		modoquiz4 = false


func _on_AreaScreen7_body_entered(body):
	if body.name == "Player":
		modoquiz5= true
	else:
		modoquiz5= false


func _on_AreaScreen7_body_exited(body):
	if body.name == "Player":
		modoquiz5 = false


func _on_AreaScreen8_body_entered(body):
	if body.name == "Player":
		modoquiz6= true
	else:
		modoquiz6= false


func _on_AreaScreen8_body_exited(body):
	if body.name == "Player":
		modoquiz6 = false


func _on_AreaScreen9_body_entered(body):
	if body.name == "Player":
		modoquiz7= true
	else:
		modoquiz7= false


func _on_AreaScreen9_body_exited(body):
	if body.name == "Player":
		modoquiz7 = false


func _on_AreaScreen10_body_entered(body):
	if body.name == "Player":
		modoquiz8= true
	else:
		modoquiz8= false


func _on_AreaScreen10_body_exited(body):
	if body.name == "Player":
		modoquiz8 = false


func _on_AreaScreen11_body_entered(body):
	if body.name == "Player":
		modoquiz9= true
	else:
		modoquiz9= false


func _on_AreaScreen11_body_exited(body):
	if body.name == "Player":
		modoquiz9 = false


func _on_AreaScreen12_body_entered(body):
	if body.name == "Player":
		modoquiz10= true
	else:
		modoquiz10= false


func _on_AreaScreen12_body_exited(body):
	if body.name == "Player":
		modoquiz10 = false
	
func _on_AreaScreen13_body_entered(body):
	if body.name == "Player":
		modoquiz11= true
	else:
		modoquiz11= false


func _on_AreaScreen13_body_exited(body):
	if body.name == "Player":
		modoquiz11 = false

func _on_AreaScreen14_body_entered(body):
	if body.name == "Player":
		modoquiz12= true
	else:
		modoquiz12= false


func _on_AreaScreen14_body_exited(body):
	if body.name == "Player":
		modoquiz12 = false

func _on_AreaScreen15_body_entered(body):
	if body.name == "Player":
		modoquiz13= true
	else:
		modoquiz13= false


func _on_AreaScreen15_body_exited(body):
	if body.name == "Player":
		modoquiz13 = false


func _on_AreaScreen16_body_entered(body):
	if body.name == "Player":
		modoquiz14= true
	else:
		modoquiz14= false


func _on_AreaScreen16_body_exited(body):
	if body.name == "Player":
		modoquiz14 = false


func _on_AreaScreen17_body_entered(body):
	if body.name == "Player":
		modoquiz15= true
	else:
		modoquiz15= false


func _on_AreaScreen17_body_exited(body):
	if body.name == "Player":
		modoquiz15 = false
