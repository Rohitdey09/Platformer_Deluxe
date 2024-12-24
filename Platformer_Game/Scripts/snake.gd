extends StaticBody2D

var speed = 50

var direction = 1

var move_distance = 100

@onready var animated_sprite_2d = $AnimatedSprite2D

var travelled_distance=0
# Called when the node enters the scene tree for the first time.
func _process(delta):
	var motion = direction * speed * delta
	position.x += motion
	travelled_distance += abs(motion)

	if travelled_distance >= move_distance:
		direction *= -1
		animated_sprite_2d.scale.x*=-1
		travelled_distance = 0
		



