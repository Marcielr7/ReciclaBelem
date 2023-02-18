extends Position2D



## FASE FINALLLLL####################



export (PackedScene) var spawnScene
onready var spawnReference = load (spawnScene.get_path())
export (PackedScene) var spawnScene2
onready var spawnReference2 = load (spawnScene2.get_path())
export (PackedScene) var spawnScene3
onready var spawnReference3 = load (spawnScene3.get_path())
export (PackedScene) var spawnScene4
onready var spawnReference4 = load (spawnScene4.get_path())
export (PackedScene) var spawnScene5
onready var spawnReference5 = load (spawnScene5.get_path())
export (PackedScene) var spawnScene6
onready var spawnReference6 = load (spawnScene6.get_path())
export (PackedScene) var spawnScene7
onready var spawnReference7 = load (spawnScene7.get_path())
export (PackedScene) var spawnScene8
onready var spawnReference8 = load (spawnScene8.get_path())
export (PackedScene) var spawnScene9
onready var spawnReference9 = load (spawnScene9.get_path())
export (PackedScene) var spawnScene10
onready var spawnReference10 = load (spawnScene10.get_path())
export (PackedScene) var spawnScene11
onready var spawnReference11 = load (spawnScene11.get_path())
export (PackedScene) var spawnScene12
onready var spawnReference12 = load (spawnScene12.get_path())
export (PackedScene) var spawnScene13
onready var spawnReference13 = load (spawnScene13.get_path())
export (PackedScene) var spawnScene14
onready var spawnReference14 = load (spawnScene14.get_path())
export (PackedScene) var spawnScene15
onready var spawnReference15 = load (spawnScene15.get_path())
export (PackedScene) var spawnScene16
onready var spawnReference16 = load (spawnScene16.get_path())



#########script janela  FINAL   ############# 


export (NodePath) var timerPath
onready var timerNode = get_node(timerPath)
export (float) var minWaitTime
export (float) var maxWaitTime


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timerNode.set_wait_time(rand_range(minWaitTime , maxWaitTime))
	timerNode.start()
	pass # Replace with f

func _on_Timer_timeout():
	$abre_fecha.play()
	timerNode.set_wait_time(rand_range(minWaitTime,maxWaitTime))
	pass # Replace with function body.


func _on_abre_fecha_frame_changed():
	if $abre_fecha.frame==2:
		var spawnInstance = spawnReference.instance()
		var spawnInstance2 = spawnReference2.instance()
		var spawnInstance3 = spawnReference3.instance()
		var spawnInstance4 = spawnReference4.instance()
		var spawnInstance5 = spawnReference5.instance()
		var spawnInstance6 = spawnReference6.instance()
		var spawnInstance7 = spawnReference7.instance()
		var spawnInstance8 = spawnReference8.instance()
		var spawnInstance9 = spawnReference9.instance()
		var spawnInstance10 = spawnReference10.instance()
		var spawnInstance11 = spawnReference11.instance()
		var spawnInstance12 = spawnReference12.instance()
		var spawnInstance13 = spawnReference13.instance()
		var spawnInstance14 = spawnReference14.instance()
		var spawnInstance15 = spawnReference15.instance()
		var spawnInstance16 = spawnReference16.instance()


	
		var rand_spawn= rand_range(0 ,16.0)
		print (rand_spawn)
		if rand_spawn >= 0 and rand_spawn<=1.0:
		
			get_parent().add_child(spawnInstance)
			spawnInstance.set_global_position(get_global_position())
			
		else:
			if rand_spawn >=1.0 and rand_spawn<=2.0:
			
				get_parent().add_child(spawnInstance2)
				spawnInstance2.set_global_position(get_global_position())
				
			else:
				if rand_spawn >2.0 and rand_spawn<=3.0:
					
					get_parent().add_child(spawnInstance3)
					spawnInstance3.set_global_position(get_global_position())
					
				else:
					if rand_spawn >3.0 and rand_spawn<=4.0:
						
						get_parent().add_child(spawnInstance4)
						spawnInstance4.set_global_position(get_global_position())
					
					else:
						if rand_spawn >4.0 and rand_spawn<=5.0:
						
							get_parent().add_child(spawnInstance5)
							spawnInstance5.set_global_position(get_global_position())
							
				
						else:
							if rand_spawn >5.0 and rand_spawn<=6.0:
							
								get_parent().add_child(spawnInstance6)
								spawnInstance6.set_global_position(get_global_position())
								
							else:
								if rand_spawn >6.0 and rand_spawn<=7.0:
									
									get_parent().add_child(spawnInstance7)
									spawnInstance7.set_global_position(get_global_position())
								else:
									if rand_spawn >7.0 and rand_spawn<=8.0:
										
										get_parent().add_child(spawnInstance8)
										spawnInstance8.set_global_position(get_global_position())
										

									else:
										if rand_spawn >8.0 and rand_spawn<=9.0:
											
											get_parent().add_child(spawnInstance9)
											spawnInstance9.set_global_position(get_global_position())
										else:
											if rand_spawn >9.0 and rand_spawn<=10.0:
											
												get_parent().add_child(spawnInstance10)
												spawnInstance10.set_global_position(get_global_position())
											else:
												if rand_spawn >10.0 and rand_spawn<=11.0:
													
													get_parent().add_child(spawnInstance11)
													spawnInstance11.set_global_position(get_global_position())
												else:
													if rand_spawn >11.0 and rand_spawn<=12.0:
														get_parent().add_child(spawnInstance12)
														spawnInstance12.set_global_position(get_global_position())
													else:
														if rand_spawn >12.0 and rand_spawn<=13.0:
															get_parent().add_child(spawnInstance13)
															spawnInstance13.set_global_position(get_global_position())
														else:
															if rand_spawn >13.0 and rand_spawn<=14.0:
																get_parent().add_child(spawnInstance14)
																spawnInstance14.set_global_position(get_global_position())
															else:
																if rand_spawn >14.0 and rand_spawn<=15.0:
																	get_parent().add_child(spawnInstance15)
																	spawnInstance15.set_global_position(get_global_position())
																else:
																	if rand_spawn >15.0 and rand_spawn<=16.0:
																		get_parent().add_child(spawnInstance16)
																		spawnInstance16.set_global_position(get_global_position())













	pass # Replace with function body.










func _on_abre_fecha_animation_finished():
	$abre_fecha.stop()
	timerNode.start()
	pass # Replace with function body.
