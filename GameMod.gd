extends Node

signal stats_changed(yorgunluk, anksiyete, aile_puani)

var yorgunluk: int = 100
var anksiyete: int = 100
var aile_puani: int = 100

func update_stats(y_degisim: int, a_degisim: int, aile_degisim: int):
	yorgunluk = clamp(yorgunluk + y_degisim, 0, 100)
	anksiyete = clamp(anksiyete + a_degisim, 0, 100)
	aile_puani = clamp(aile_puani + aile_degisim, 0, 100)
	emit_signal("stats_changed", yorgunluk, anksiyete, aile_puani)


func _on_bilgisayar_ekrani_pressed() -> void:
	pass # Replace with function body.
