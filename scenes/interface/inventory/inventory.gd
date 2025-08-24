extends Control

@onready var inventory_panel = $PanelContainer
@onready var close_button = $PanelContainer/CloseButton
@onready var grid_container = $PanelContainer/MarginContainer/GridContainer

func update_inventory():
	var player_inventory = Inventory.get_inventory()

	# Add items to the GridContainer
	print(player_inventory)
	for resource_enum in player_inventory.keys():
		var resource_amount = player_inventory[resource_enum]
		if resource_amount > 0:
			var resource_name = Resources.ResourceMeta[resource_enum]["resource_name"]
			var label = Label.new()
			label.text = "%s: %d" % [resource_name, resource_amount]
			grid_container.add_child(label)
			
func toggle_visibility():
	# Clear existing items in the GridContainer
	if inventory_panel.visible:
		for child in grid_container.get_children():
			child.queue_free()

	# Populate the GridContainer with updated inventory items
	if not inventory_panel.visible:
		update_inventory()

	inventory_panel.visible = not inventory_panel.visible

func _ready():
	close_button.connect("pressed", Callable(self, "_on_close_button_pressed"))
	inventory_panel.visible = false

func _on_close_button_pressed():
	toggle_visibility()
