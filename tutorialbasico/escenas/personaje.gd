extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var anim_actual = "idle" # animacion actual: parado


func _process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor(): # si no estoy en el suelo
		velocity += get_gravity() * delta # ir cayendo con la gravedad


	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor(): # si estoy en el suelo y pulso saltar
		velocity.y = JUMP_VELOCITY # saltar


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right") # recoger el input a izquierda y derecha
	if direction: # Si hay input
		velocity.x = direction * SPEED # movereme en la dirección a la velocidad
		cambiar_animacion("andar")
		if velocity.x < 0:
			$Sprite2D.flip_h = true # si la velocidad es negativa voy a la izquierda y por tanto volteo el sprite
		else:
			$Sprite2D.flip_h = false
	else:
		velocity.x = 0 # si no hay input me paro
		cambiar_animacion("idle")


	move_and_slide() # moverse y colisionar
	

# funcion para cambiar de animacion
func cambiar_animacion(nombre_anim):
	if nombre_anim != anim_actual:
		$Sprite2D/AnimationPlayer.play(nombre_anim)
		anim_actual = nombre_anim
