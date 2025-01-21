extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Cuando entra un cuerpo en el area
func _on_body_entered(body: Node2D) -> void:
	Controlador.actualizar_contador_monedas() # actualizo contador de monedas
	queue_free() # elimino la moneda
	pass # Replace with function body.
