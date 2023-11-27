extends Node3D

var highlight

var original_material

func _ready():
	highlight = load("res://highlighted_material.tres")
	original_material = $MeshInstance3D.get_active_material(0)
	
	$Area3D.mouse_entered.connect(_on_hover)
	$Area3D.mouse_exited.connect(_on_end_hover)

func _on_hover():
	$MeshInstance3D.set_surface_override_material(0, highlight)

func _on_end_hover():
	$MeshInstance3D.set_surface_override_material(0, original_material)
