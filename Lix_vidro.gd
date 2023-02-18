extends Area2D
#********************LIXEIRA vidro  fase 04 **************
var mouseIn:bool = false
var tempo:bool =false

# Called when the node enters the scene tree for the first time.
func _ready():
	#get_tree().paused=false
	
#	$AnimatedSprite.texture= texture_Slots
	#start=true
	$anim_move.play()
	tempo=true
	
	pass
	


func _on_Lix_vidro_body_entered(body):
	BotMain_script.score_atual+=100
	$anim_certo.play()
	$tempo_certo.start()
	body.queue_free()
	pass # Replace with function body.


func _on_N100_body_entered(body):
	body.queue_free()
	BotMain_script.score_atual-=100
	print("errrou")
	$N100/anim_errou.play()
	$N100/erro.start()
	pass # Replace with function body.


func _on_tempo_certo_timeout():
	$anim_certo.stop() 
	$anim_certo.frame=0
	pass # Replace with function body.


func _on_erro_timeout():
	$N100/anim_errou.stop() 
	$N100/anim_errou.frame=0
	
	pass # Replace with function body.


func _input(event):
	if Input.is_action_pressed("ui_toque") and mouseIn: 
		self.position = get_global_mouse_position()
	
	


func _on_tempo_move_timeout():
	print(" tempo fim")
	$anim_move.queue_free()
	BotMain_script.score_atual+=100
	tempo=false
	mouseIn=false
	pass # Replace with function body.


func _on_Lix_vidro_mouse_entered():
	print("entrou")
	if tempo==true:
		mouseIn=true
	pass # Replace with function body.


func _on_Lix_vidro_mouse_exited():
	mouseIn= false
	pass # Replace with function body.
