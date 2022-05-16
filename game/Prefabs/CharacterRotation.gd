extends Node2D

export (PackedScene) var Bullet
var interp_speed = 0.5
var angle_offset = 90


func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("shoot"):
		shoot()
		
func shoot():
	var b = Bullet.instance()
	owner.owner.add_child(b)
	b.transform = $HumanSprite/BowSocket.global_transform
