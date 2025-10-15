extends StaticBody3D

@onready var anim: AnimationPlayer = $AnimationPlayer

func _on_tree_entered() -> void:
	print("door")
