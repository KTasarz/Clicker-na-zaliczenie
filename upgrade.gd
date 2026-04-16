extends Node

class_name UpgradeClass

var count = 0
var cost

func _init(cost: int):
	self.cost = cost

func upgrade_click(value):
	print("upgrade_click został użyty")
	count = count + 1
	cost = cost + round(cost * 0.4)
	Points.click = Points.click + value

func upgrade_passive(value):
	print("upgrade_passive został użyty")
	count = count + 1
	cost = cost + round(cost * 0.4)
	Points.passive = Points.passive + value
