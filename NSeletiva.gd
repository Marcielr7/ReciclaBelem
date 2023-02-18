extends Area2D
######## fase 02 ########

func _ready():
	pass
######## nao seletiva

func _on_NSeletiva2_body_entered(body):
	print("tocouuu")
	body.queue_free()
	BotMain_script.score_atual+=10
	print("errrou")
	$anim_certo.play()
	$Timer_acerto.start()
	pass # Replace with function body.


func _on_Timer_acerto_timeout():
	$anim_certo.stop() 
	$anim_certo.frame=0
	pass # Replace with function body.


func _on_Nsele_erro_body_entered(body):
	print("tocouuu")
	body.queue_free()
	BotMain_script.score_atual-=10
	print("errrou")
	$Nsele_erro/anim_erro.play()
	$Nsele_erro/Timer_erro.start()
	pass # Replace with function body.


func _on_Timer_erro_timeout():
	$Nsele_erro/anim_erro.stop() 
	$Nsele_erro/anim_erro.frame=0
	pass # Replace with function body.
