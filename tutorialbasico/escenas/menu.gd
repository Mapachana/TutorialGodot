extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# funcion que se ejecuta al pulsar el boton
func _on_button_pressed() -> void:
	Controlador.goto_scene("res://escenas/nivel.tscn") # cambiar a escena de nivel
