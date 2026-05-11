extends Area2D

var bullet = preload("res://Jame-Gam-58/Objects/scenes/bullet.tscn")

func _on_timer_timeout() -> void:
	add_child(bullet.instantiate())
	$Timer.start
