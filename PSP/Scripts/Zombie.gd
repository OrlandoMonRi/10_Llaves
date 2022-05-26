extends KinematicBody2D

var MOVE_SPEED = 250

var vivo = 0

var Zombie = Sprite.new()

onready var raycast = $RayCast2D

var player = null

func _ready():
	add_to_group("zombies")


func _physics_process(delta):
	if player == null:
		return
	
	var vec_to_player = player.global_position - global_position
	vec_to_player = vec_to_player.normalized()
	global_rotation = atan2(vec_to_player.y, vec_to_player.x)
	move_and_collide(vec_to_player * MOVE_SPEED * delta)
	
	if raycast.is_colliding():
		var coll = raycast.get_collider()
		if coll.name == "Player":
			coll.kill()
	
func kill():
	MOVE_SPEED = 0
	$Sprite.texture = load("res://Sprites/corpse.png")
	queue_free()
	
func set_player(p):
	player = p
