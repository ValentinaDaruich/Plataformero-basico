extends Node2D


var calabaza = 0


func _on_calabaza_recoger_item():
	calabaza += 1
	print(calabaza)
	#get_node("UI/contadorItems").text = String(calabaza)
	$UI/contadorItems.text = str(calabaza)
	
	if calabaza == 7:
		get_tree().change_scene_to_file("res://ganar.tscn")
	
