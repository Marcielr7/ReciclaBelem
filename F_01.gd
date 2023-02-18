extends Node2D
var mouseIn = false
var tempo=false
## script fase 01 ########
var kilos = 0

func _ready():
	
	$cenario/anim_time.play()
	Globalzinho.vento= 0.09
	Globalzinho.rota= 0
	pass


func _on_anim_time_animation_finished():
	$cenario/anim_time.queue_free()

	pass # Replace with function body.




func _on_tempo_vento_timeout():
	Globalzinho.vento= -0.2
	$vento/anim_wind.flip_h=true
	$vento/anim_wind.play()
	$vento/wood_post_base/animband.flip_h=true
	$vento/wood_post_base/animband.position.x= -143.287
	$vento/wood_post_base/animband.position.y= -517.728
	pass # Replace with function body.
