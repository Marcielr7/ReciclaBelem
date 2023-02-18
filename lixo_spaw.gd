extends Position2D
export (PackedScene) var spawnScene_lixo
onready var spawnReference = load (spawnScene_lixo.get_path())






func _on_Area2D_body_entered(body):
	var spawnInstance = spawnReference.instance()
	
	get_parent().add_child(spawnInstance)
	spawnInstance.position = Vector2(body.position.x,940)  #rand_range(10,480)
	body.queue_free()
	pass # Replace with function body.
