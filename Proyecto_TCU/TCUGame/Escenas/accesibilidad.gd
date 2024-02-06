extends Control




func _ready():
	set_game()
	pass
	
func set_game():
	$HBoxContainer/VBoxContainer/Label.text = tr("El idioma es: \r")
	$HBoxContainer/VBoxContainer/Label.text += tr("KEY1")
	$HBoxContainer/VBoxContainer/Label.text += tr(" ")
	$HBoxContainer/VBoxContainer/Label.text += tr("KEY2")
	pass


func _on_eng_pressed():
	TranslationServer.set_locale("eng")
	set_game()
	pass # Replace with function body.


func _on_esp_pressed():
	TranslationServer.set_locale("esp")
	set_game()
	pass # Replace with function body.
