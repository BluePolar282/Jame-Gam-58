extends Area2D

var bullet = preload("res://Jame-Gam-58/Objects/scenes/bullet.tscn")


func _on_timer_timeout() -> void:
	spawn_bullet(10)
	$Timer.start

func spawn_bullet(number):
	var spawned_bullet = bullet.instantiate()
	add_child(spawned_bullet)
	if is_in_group("Left Spawner"):
		spawned_bullet.add_to_group("Left Spawner")
		
	elif is_in_group("Top Spawner"):
		spawned_bullet.add_to_group("Top Spawner")
		
	elif is_in_group("Right Spawner"):
		spawned_bullet.add_to_group("Right Spawner")
		
	elif is_in_group("Bottom Spawner"):
		spawned_bullet.add_to_group("Bottom Spawner")
