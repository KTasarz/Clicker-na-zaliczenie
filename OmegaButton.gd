extends Button

@onready var banner = $"../PointsLabel"

func _on_pressed() -> void:
	Points.amount = Points.amount + Points.click
	banner.text = "POINTS: " + str(Points.amount)
