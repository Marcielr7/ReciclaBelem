extends Node2D

func _ready():
	$cenario/anim_time.play()
	pass


func _on_anim_time_animation_finished():
	$cenario/anim_time.queue_free()
	pass # Replace with function body.
