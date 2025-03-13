extends Node

@onready var paneldepausa = %Paneldepausa



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var esc_pressed = Input.is_action_just_pressed("pause")
	if (esc_pressed == true):
		get_tree().paused = true
		paneldepausa.show() 


func _on_r_esumir_pressed():
	paneldepausa.hide() 
	get_tree().paused = false



func _on_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://menu_principal.tscn")
