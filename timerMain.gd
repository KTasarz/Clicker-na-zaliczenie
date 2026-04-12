extends Timer

@onready var banner = $"../PointsLabel"

func _on_timeout() -> void:
	Points.amount = Points.amount + Points.passive
	banner.text = "POINTS: " + str(Points.amount)
