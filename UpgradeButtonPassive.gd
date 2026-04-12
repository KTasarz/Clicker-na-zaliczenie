extends Button

@onready var banner = $"../RTLabelPoints"
var upgrade = UpgradeClass.new(20)

func _on_pressed() -> void:
	print("Sprawdzanie czy "+str(Points.amount)+" >= "+ str(upgrade.cost))
	if Points.amount >= upgrade.cost:
		print("Sprawdzenie udane")
		Points.amount = Points.amount - upgrade.cost
		banner.text = "POINTS: " + str(Points.amount)
		upgrade.upgrade_passive(1)
