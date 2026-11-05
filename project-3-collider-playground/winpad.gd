extends StaticBody3D
var obtained = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	if not obtained:
		print ("Wow you're so smart")
		$MeshInstance3D.get_active_material(0).albedo_color = Color(0.0, 1.0, 0.0, 1.0)
		obtained = true
