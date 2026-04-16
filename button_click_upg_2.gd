extends Button

@onready var banner = $"../RTLabelPoints"

func _on_pressed() -> void:
	print("Sprawdzanie czy "+str(Points.amount)+" >= "+ str(UpgradeManager.clik2.cost))
	if Points.amount >= UpgradeManager.clik2.cost:
		print("Sprawdzenie udane")
		Points.amount = Points.amount - UpgradeManager.clik2.cost
		banner.text = "POINTS: " + str(Points.amount)
		UpgradeManager.clik2.upgrade_click(5)
