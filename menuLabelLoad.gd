extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Przejście do nowej sceny")
	$".".text = "POINTS: " + str(Points.amount)
