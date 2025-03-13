extends RigidBody2D
@onready var gestion_informaci_n = %"Gestion_información"
@onready var click_2 = $Click2

var enemigoderrotas= 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x 
		if (y_delta > 30):
			queue_free()
			body.jump()
			enemigoderrotas += 1 
		else:
			gestion_informaci_n.Perdervida()
			if (x_delta>0):
				body.jump_side(500)
			else:
				body.jump_side(-500)
	pass # Replace with function body.



