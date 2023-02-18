extends Node2D

######### FASE02  ###################

func _ready():
	Globalzinho.fase2=true
	$cenario/anim_time.play()
	Globalzinho.vento= -0.2
	$vento/wood_post_base/animband.flip_h=true
	$vento/wood_post_base/animband.position.x= -143.287
	$vento/wood_post_base/animband.position.y= -517.728
	pass


func _on_anim_time_animation_finished():
	$cenario/anim_time.queue_free()
	pass # Replace with function body.



func _on_vento1_timeout():
	$vento/anim_wind.flip_h=true
	$vento/anim_wind.play()
	$vento/wood_post_base/animband.flip_h=true
	$vento/wood_post_base/animband.position.x= -143.287
	$vento/wood_post_base/animband.position.y= -517.728
	Globalzinho.vento= -0.23
	Globalzinho.rota= 0.2
	pass # Replace with function body.


func _on_vento2_timeout():
	$vento/anim_wind.flip_h=false
	$vento/anim_wind.play()
	$vento/wood_post_base/animband.flip_h=false
	$vento/wood_post_base/animband.position.x= 142.165
	$vento/wood_post_base/animband.position.y= -511.231
	Globalzinho.vento= 0.23
	Globalzinho.rota= -0.2

	pass # Replace with function body.
