extends Button

@onready var banner = $"../PointsLabel"
var upgrade = UpgradeClass.new(20)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	if Points.amount >= upgrade.cost:
		Points.amount = Points.amount - upgrade.cost
		banner.text = "POINTS: " + str(Points.amount)
		upgrade.upgrade_passive(1)
