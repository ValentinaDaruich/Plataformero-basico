extends Control


@onready var label = $Label
@onready var temporizador = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	temporizador.start()
	
func tiempoEscapeRestante():
	var time_left = temporizador.time_left
	var minutos = floor(time_left / 60 )
	var seg = int(time_left) % 60
	return [minutos, seg]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text = "%02d:%02d" % tiempoEscapeRestante()
	
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://perder.tscn")
