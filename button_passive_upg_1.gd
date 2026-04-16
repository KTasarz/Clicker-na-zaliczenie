extends Button

@onready var banner = $"../RTLabelPoints"

func _on_pressed() -> void:
	print("Sprawdzanie czy "+str(Points.amount)+" >= "+ str(UpgradeManager.passive1.cost))
	if Points.amount >= UpgradeManager.passive1.cost:
		print("Sprawdzenie udane")
		Points.amount = Points.amount - UpgradeManager.passive1.cost
		banner.text = "POINTS: " + str(Points.amount)
		UpgradeManager.passive1.upgrade_passive(1)
