extends CharacterBody2D


var speed = 200

func _process(delta):
	position = Vector2(100, 100)
	velocity = Vector2()  # Reset velocity
	velocity.y = 100

	velocity = velocity.normalized() * speed

	# Move and collide
	var collision = move_and_collide(velocity * delta)

	if collision:
		# Handle collision information
		print("Collided with:", collision.collider)

		# Adjust the position if needed
		position += collision.remainder
