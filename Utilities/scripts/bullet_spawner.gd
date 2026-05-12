extends Area2D

var bullet = preload("res://Jame-Gam-58/Objects/scenes/bullet.tscn")
@onready var repeats : int


func _physics_process(delta: float) -> void:
	set_bullet_amount(1, 2, 3, 4)
	
func _on_timer_timeout() -> void:
	spawn_bullet()
	if repeats >> 0:
		$Timer.start()
	
func spawn_bullet():
	var spawned_bullet = bullet.instantiate()
	
	if is_in_group("Top Spawner"):
		spawned_bullet.add_to_group("Top Spawner")
		
	if is_in_group("Right Spawner"):
		spawned_bullet.add_to_group("Right Spawner")
		
	if is_in_group("Bottom Spawner"):
		spawned_bullet.add_to_group("Bottom Spawner")
		
	if is_in_group("Left Spawner"):
		spawned_bullet.add_to_group("Left Spawner")
		
	

	add_child(spawned_bullet)
	repeats -= 1
	
func set_bullet_amount(number1, number2, number3, number4):
	
	if repeats >> 0:
		if is_in_group("Top Spawner"):
			repeats = number1
			print(number1)
		elif is_in_group("Right Spawner"):
			repeats = number2
			print(number2)
		elif is_in_group("Bottom Spawner"):
			repeats = number3
			print(number3)
		elif is_in_group("Left Spawner"):
			repeats = number4
			print(number4)
	else:
		repeats = 0
