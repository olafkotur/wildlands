extends StaticBody2D

@export var resource_name: Resources.ResourceName

@onready var animation = $AnimatedSprite2D
@onready var timer = $Timer

var resource = Resources.ResourceMeta[resource_name]
var is_depleted = false
var player_in_area = false

func harvest() -> void:
	is_depleted = true
	animation.play(resource["depleted_animation"])
	timer.start(resource["respawn_time"])
	Inventory.add_resource(resource_name, resource["resource_amount"])

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		player_in_area = true

		if not is_depleted:
			harvest()

func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.is_in_group("player"):
		player_in_area = false

func _on_timer_timeout() -> void:
	is_depleted = false
	animation.play(resource["default_animation"])

	if player_in_area:
		harvest()
		
func _ready() -> void:
	animation.play(resource["default_animation"])
