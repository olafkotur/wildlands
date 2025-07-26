extends CharacterBody2D

const SPEED = 100

@onready var animated_sprite = $AnimatedSprite2D

func move_character():
	var direction = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	# normalize direction if moving diagonally
	if direction.length() > 1:
		direction = direction.normalized()

	# move the character
	velocity = direction * SPEED
	move_and_slide()

	# play the appropriate animation based on direction
	if direction != Vector2.ZERO:
		if abs(direction.x) > abs(direction.y):
			animated_sprite.play("run-east" if direction.x > 0 else "run-west")
		else:
			animated_sprite.play("run-south" if direction.y > 0 else "run-north")
	else:
		animated_sprite.play("idle")

func _physics_process(_delta):
	move_character()
