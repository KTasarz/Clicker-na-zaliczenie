extends Timer

@onready var banner = $"../VBoxContainer/RTLabelPoints"

func _on_timeout() -> void:
	Points.amount = Points.amount + Points.passive
	banner.text = "POINTS: " + str(Points.amount)
