extends StaticBody3D

@onready var anim: AnimationPlayer = $AnimationPlayer


func _on_static_body_3d_pressed() -> void:
	anim.play("Door_up")


func _on_static_body_3d_unpressed() -> void:
	anim.play("Door_down")
