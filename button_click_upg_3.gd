extends Button

@onready var banner = $"../RTLabelPoints"

func _on_pressed() -> void:
	print("Sprawdzanie czy "+str(Points.amount)+" >= "+ str(UpgradeManager.clik3.cost))
	if Points.amount >= UpgradeManager.clik3.cost:
		print("Sprawdzenie udane")
		Points.amount = Points.amount - UpgradeManager.clik3.cost
		banner.text = "POINTS: " + str(Points.amount)
		UpgradeManager.clik3.upgrade_click(20)
