extends CanvasLayer

@onready var hud = $Hud
@onready var inventory = $Inventory

func _ready():
	hud.connect("inventory_button_pressed", Callable(self, "_on_inventory_button_pressed"))

func _on_inventory_button_pressed():
	inventory.toggle_visibility()
