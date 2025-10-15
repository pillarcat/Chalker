extends XRController3D
var activePointedObject = null
var activeState :=true

func _ready() -> void:
	connect("button_pressed",btnPressedOnLeftCntrler)

func _physics_process(delta: float) -> void:
	if $RayCast3D.is_colliding() and activeState: 
		var c = $RayCast3D.get_collider()
		activePointedObject = c
		print("is colliding")
	else: 
		activePointedObject = null

func btnPressedOnLeftCntrler(name:String) -> void:
	if name=="ax_button":
		if activePointedObject:
			activePointedObject.queue_free()
		activeState = true
	print(name)
func btnReleasedOnLeftCntrler(name: String) -> void:
	if name =="ax_button":
		pass
		
