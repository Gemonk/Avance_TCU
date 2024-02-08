extends ParallaxLayer

var dir = Vector2 (1 , 1)
var speed = 20

func _process(delta):
	motion_offset += dir * speed * delta
