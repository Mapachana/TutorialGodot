extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Controlador.ruta_etiqueta_nivel = $CanvasLayer/Label # guardo la ruta de la etiqueta para actualizarla en el controlador
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
