class_name Piece extends Node3D

@export var type: int
@export var color: int

var model: MeshInstance3D

func _init(init_type, init_color):
	type = init_type
	color = init_color
	model = MeshInstance3D.new()
	var mesh 
	if color == 0:
		mesh = load("res://white_piece.tres")
	else:
		mesh = load("res://black_piece.tres")
		
	model.set_mesh(mesh)
	add_child(model)
