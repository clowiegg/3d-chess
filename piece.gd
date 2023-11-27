class_name Piece extends Node3D

@export var type: int
@export var color: int

var model: MeshInstance3D
var area: Area3D
var collision: CollisionShape3D
var mesh: Mesh
var highlight: Material

func _init(init_type, init_color):
	type = init_type
	color = init_color
	model = MeshInstance3D.new()
	if color == 0:
		mesh = load("res://white_piece.tres")
	else:
		mesh = load("res://black_piece.tres")
		
	highlight = load("res://highlighted_material.tres")
	model.set_mesh(mesh)
	add_child(model)
	

