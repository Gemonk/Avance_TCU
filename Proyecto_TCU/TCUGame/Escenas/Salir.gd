class_name Instrucciones
extends Control

@onready var boton_salir = $"." as Button

signal opcion_salir

func _ready():
	boton_salir.button_down.connect(on_precionar_salir)
	set_process(false)
	

func on_precionar_salir ():
	get_tree().change_scene_to_file("res://menu.tscn")
