extends Button

@onready var banner = $"../RTLabelPoints"

func _on_pressed() -> void:
	print("Sprawdzanie czy "+str(Points.amount)+" >= "+ str(UpgradeManager.passive2.cost))
	if Points.amount >= UpgradeManager.passive2.cost:
		print("Sprawdzenie udane")
		Points.amount = Points.amount - UpgradeManager.passive2.cost
		banner.text = "POINTS: " + str(Points.amount)
		UpgradeManager.passive2.upgrade_passive(10)
