extends Position2D
#####janela1fase2########
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


#####janela1fase1########
#####FASE01  JANELA 01  ########


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
	pass # Replace with function body.

func _on_caco2_animation_finished():
	$caco2.stop()
	timerNode.start()
	pass # Replace with function body.


func _on_caco2_frame_changed():
	if $caco2.frame==1:
		
		var spawnInstance = spawnReference.instance()
		var spawnInstance2 = spawnReference2.instance()
		var spawnInstance3 = spawnReference3.instance()
		var spawnInstance4 = spawnReference4.instance()
		var spawnInstance5 = spawnReference5.instance()
		var spawnInstance6 = spawnReference6.instance()
		var spawnInstance7 = spawnReference7.instance()
		var spawnInstance8 = spawnReference8.instance()
		var spawnInstance9 = spawnReference9.instance()
	
		var rand_spawn= rand_range(0 ,9.0)
		print (rand_spawn)
		if rand_spawn >= 0 and rand_spawn<=1.0:
		
			get_parent().add_child(spawnInstance)
			
			spawnInstance.position.x=432
			spawnInstance.position.y=381
			
			
		else:
			if rand_spawn >=1.0 and rand_spawn<=2.0:
				
				
				get_parent().add_child(spawnInstance2)
				
				spawnInstance2.position.x=432
				spawnInstance2.position.y=381
				
			else:
				if rand_spawn >2.0 and rand_spawn<=3.0:
					
					get_parent().add_child(spawnInstance3)
					spawnInstance3.position.x=432
					spawnInstance3.position.y=381
					
				else:
					if rand_spawn >3.0 and rand_spawn<=4.0:
						
						get_parent().add_child(spawnInstance4)
						spawnInstance4.position.x=432
						spawnInstance4.position.y=381
					
					else:
						if rand_spawn >4.0 and rand_spawn<=5.0:
						
							get_parent().add_child(spawnInstance5)
							spawnInstance5.position.x=432
							spawnInstance5.position.y=381
							
				
						else:
							if rand_spawn >5.0 and rand_spawn<=6.0:
							
								get_parent().add_child(spawnInstance6)
								spawnInstance6.position.x=432
								spawnInstance6.position.y=381
								
							else:
								if rand_spawn >6.0 and rand_spawn<=7.0:
									
									get_parent().add_child(spawnInstance7)
									spawnInstance7.position.x=432
									spawnInstance7.position.y=381
								else:
									if rand_spawn >7.0 and rand_spawn<=8.0:
										
										get_parent().add_child(spawnInstance8)
										spawnInstance8.position.x=432
										spawnInstance8.position.y=381

									else:
										if rand_spawn >8.0 and rand_spawn<=9.0:
											
											get_parent().add_child(spawnInstance9)
											spawnInstance9.position.x=432
											spawnInstance9.position.y=381
											
	pass # Replace with function body.
	pass # Replace with function body.
	pass # Replace with function body
	
	
	if $caco2.frame==2:
		var spawnInstance = spawnReference.instance()
		var spawnInstance2 = spawnReference2.instance()
		var spawnInstance3 = spawnReference3.instance()
		var spawnInstance4 = spawnReference4.instance()
		var spawnInstance5 = spawnReference5.instance()
		var spawnInstance6 = spawnReference6.instance()
		var spawnInstance7 = spawnReference7.instance()
		var spawnInstance8 = spawnReference8.instance()
		var spawnInstance9 = spawnReference9.instance()
	
		var rand_spawn= rand_range(0 ,9.0)
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
											
	pass # Replace with function body.
	pass # Replace with function body.
	pass # Replace with function body.


func _on_Timer_timeout():
	$caco2.play()

	timerNode.set_wait_time(rand_range(minWaitTime,maxWaitTime))
	pass # Replace with function body.
