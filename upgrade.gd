extends Node

class_name UpgradeClass

var count = 0
var cost

func _init(cost: int):
	self.cost = cost

func upgrade_click(value):
	count = count + value
	cost = cost + round(cost * 0.1)
	Points.click = Points.click + 1

func upgrade_passive(value):
	count = count + value
	cost = cost + round(cost * 0.1)
	Points.passive = Points.passive + 1
