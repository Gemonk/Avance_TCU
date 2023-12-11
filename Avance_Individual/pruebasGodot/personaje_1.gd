extends CharacterBody2D

const PPM = 32
const ESCALA_SPRITES = 4
const DISTNACIA_COLISION = 20

var direccion = Vector2()
var rapidez = 2.0 * ESCALA_SPRITES * PPM

@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	pass
	
func _input(event):
	direccion.x = Input.get_axis("ui_left", "ui_right")
	direccion.y = Input.get_axis("ui_up", "ui_down")
	direccion = direccion.normalized()
	calcular_flip_h()

func calcular_flip_h():
	if not is_zero_approx(direccion.x):
		animated_sprite.flip_h = direccion.x < 0
		if animated_sprite.flip_h:
			animated_sprite.position.x = -30 * ESCALA_SPRITES - DISTNACIA_COLISION
		else: 
			animated_sprite.position.x = 0
		

func _physics_process(delta):
	velocity = direccion * rapidez
	move_and_slide()


