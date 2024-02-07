extends Control

@onready var nombre_audio = $HBoxContainer/Nombre_Audio as Label
@onready var num_volumen = $HBoxContainer/Num_volumen as Label
@onready var hslider = $HBoxContainer/HSlider as HSlider

@export_enum("Master", "Musica") var bus_name : String

var bus_index : int = 0

func  _ready():
	hslider.value_changed.connect(on_value_changed)
	get_bus_index()
	set_name_label_text()
	set_slider_value()

func set_name_label_text():
	nombre_audio.text = " Volumen " + str(bus_name)
	
func set_audio_num():
	num_volumen.text = str(hslider.value * 100) + "%"
	
func get_bus_index():
	bus_index = AudioServer.get_bus_index(bus_name)
	
func set_slider_value():
	hslider.value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))
	set_audio_num()
	
func on_value_changed(value : float):
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
	set_audio_num()
