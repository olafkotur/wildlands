extends Control

var inventory = {}

func _ready():
	for resource_name in Resources.ResourceName.values():
		inventory[resource_name] = 0

func add_resource(resource_name, amount):
	if inventory.has(resource_name):
		inventory[resource_name] += amount
		print("Added:", resource_name, ", Amount:", amount, ", Total in inventory:", inventory[resource_name])

func remove_resource(resource_name, amount):
	if inventory.has(resource_name) and inventory[resource_name] >= amount:
		inventory[resource_name] -= amount
		print("Removed:", resource_name, ", Amount:", amount, ", Remaining in inventory:", inventory[resource_name])
		return true
	return false

func get_inventory():
	return inventory

func has_resource(resource_name, amount):
	if inventory.has(resource_name):
		return inventory[resource_name] >= amount
	return false
