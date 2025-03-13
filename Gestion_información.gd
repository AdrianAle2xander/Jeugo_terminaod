extends Node

@onready var label = %Label


var points = 0 
@export var corazones : Array[Node]
var vidas= 5

func Perdervida(): 
	vidas -= 1
	for c in 5:
		if (c < vidas):
			corazones[c].show()
		else:
			corazones[c].hide() 
	print(vidas) 
	if (vidas == 0):
		get_tree().change_scene_to_file("res://Game_over.tscn")
func add_point():
	points += 1 
	print(points) 
	label.text = "Puntos: "+ str(points)
