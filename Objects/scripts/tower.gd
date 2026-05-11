extends StaticBody2D

var HEALTH = 100



func _on_area_2d_body_entered(body: Node2D) -> void:
	HEALTH = HEALTH - 1
