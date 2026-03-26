extends Node


var passive = 0
var click = 1

# funkcja do zmiany zdobywania punktów pasywnych jak i klikane
func add_passive_points(value):
	passive +=value
	# Aktualnie wartość klikanych punktów wynosi 10% pasywnych (min 1) 
	click = round(value*0.1)
	if click < 1:
		click = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
