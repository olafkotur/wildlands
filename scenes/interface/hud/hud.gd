extends Control

signal inventory_button_pressed

@onready var inventory_button = $Buttons/InventoryButton

func _ready():
	inventory_button.pressed.connect(on_inventory_button_pressed)

func on_inventory_button_pressed():
	emit_signal("inventory_button_pressed")
