extends StaticBody3D

signal pressed
signal unpressed

@onready var anim: AnimationPlayer = $AnimationPlayer


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name !="ButCol":
		pressed.emit()
		anim.play("button")
		print("Pressed")


func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.name !="ButCol":
		anim.play("button_2")
		unpressed.emit()
		print("released")
