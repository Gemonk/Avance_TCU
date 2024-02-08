extends CharacterBody2D

var speed := 200
var direccion := 0.0
var jump := 250
const gravity := 0

@onready var animacion := $AnimationPlayer
@onready var sprite := $Sprite2D
func _physics_process(delta):
	animacion.play("idle")
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		velocity.y = 0
		animacion.play("walk")
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		velocity.y = 0
		animacion.play("walk")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_down"):
		velocity.y = speed
		velocity.x = 0
	else:
		velocity.y = 0
		velocity.x = 0
		
			
	#if direccion != 0:
	#	animacion.play("walk")
	#else:
	#	animacion.play("idle")
	
	#sprite.flip_h = direccion < 0 if direccion != 0 else sprite.flip_h
	
	#if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
	#	velocity.y -= jump
		
	#if !is_on_floor():
	#	velocity.y += gravity
	
	move_and_slide()
