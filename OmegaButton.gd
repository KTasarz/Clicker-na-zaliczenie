extends Button

@onready var banner = $"../Points"
var times_pressed = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	times_pressed = times_pressed + Points.click
	banner.text = "POINTS: " + str(times_pressed)
