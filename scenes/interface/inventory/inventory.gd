extends Control

@onready var inventory_container = $VBoxContainer
@onready var button = $Button

func update_inventory():
	var player_inventory = Inventory.get_inventory()
	
	for resource_name in player_inventory.keys():
		var resource_amount = player_inventory[resource_name]
		if resource_amount > 0:
			var label = Label.new()
			label.text = str(resource_name) + ": " + str(resource_amount)
			inventory_container.add_child(label)

func _ready():
	button.connect("pressed", queue_free)
