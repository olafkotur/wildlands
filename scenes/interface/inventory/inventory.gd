extends Control

@onready var inventory_panel = $PanelContainer

func update_inventory():
	var player_inventory = Inventory.get_inventory()
	
	for resource_name in player_inventory.keys():
		var resource_amount = player_inventory[resource_name]
		if resource_amount > 0:
			var label = Label.new()
			label.text = str(resource_name) + ": " + str(resource_amount)
			inventory_panel.add_child(label)
			
func toggle_visibility():
	inventory_panel.visible = not inventory_panel.visible
	print("New state:", inventory_panel.visible)

func _ready():
	inventory_panel.visible = false
