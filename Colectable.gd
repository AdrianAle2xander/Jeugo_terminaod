extends Area2D

@onready var gestion_informaci_n = %"Gestion_información"


func _on_body_entered(body):
		queue_free()
		gestion_informaci_n.add_point()
