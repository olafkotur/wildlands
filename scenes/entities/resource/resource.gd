extends StaticBody2D

@export var tool_type: String
@export var resource_type: String
@export var default_animation: String
@export var depleted_animation: String
@export var resource_amount: int
@export var respawn_time: int

@onready var animated_sprite = $AnimatedSprite2D
@onready var timer = $Timer

var is_depleted = false

func harvest_resource() -> void:
	is_depleted = true
	animated_sprite.play(depleted_animation)
	timer.start(respawn_time)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player") and not is_depleted:
		harvest_resource()

func _on_timer_timeout() -> void:
	is_depleted = false
	animated_sprite.play(default_animation)
