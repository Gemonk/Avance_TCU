extends Control


func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://Escenas/jugando.tscn")


func _on_salir_pressed():
	get_tree().quit()

func _on_opciones_pressed():
	get_tree().change_scene_to_file("res://Escenas/menu_opciones.tscn")
	

	
	
