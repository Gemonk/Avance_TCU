extends Control


@onready var option_button = $HBoxContainer/OptionButton as OptionButton

const WINDOW_MODE_ARRAY : Array[String] = [
	"Pantalla completa",
	"Modo ventana",
	"Ventana sin borde",
	"Pantalla completa sin borde"
	
]

func _ready():
	_add_window_mode_item()
	option_button.item_selected.connect(on_window_mode_selected)
	
func _add_window_mode_item():
	for window_mode in WINDOW_MODE_ARRAY:
		option_button.add_item(window_mode)

func on_window_mode_selected(index : int):
	match index:
		0: #Pantalla completa
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		1: #Modo ventana
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		2: #Ventana sin borde
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
		3: #Pantalla completa sin borde
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
			
