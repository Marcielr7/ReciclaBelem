extends Node2D
var amplitude = 20  #SHAKE
onready var camera = get_parent()  #SHAKE
const TRANS= Tween.TRANS_SINE  #SHAKE
const EASE = Tween.EASE_IN_OUT  #SHAKE
var priority = 0 #SHAKE

func _new_shake(): #SHAKE
	var rand = Vector2()
	rand.x = rand_range(-amplitude , amplitude)
	rand.y = rand_range(-amplitude , amplitude)
	
	$Shake_tween.interpolate_property(camera, "offset" , camera.offset, rand ,$Frequencia.wait_time ,TRANS , EASE)  
	$Shake_tween.start()                
	pass
func _reset(): #SHAKE
	$Shake_tween.interpolate_property(camera, "offset" , camera.offset, Vector2() ,$Frequencia.wait_time ,TRANS , EASE)  
	$Shake_tween.start()
	priority =0
	pass
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.#
func _process(delta):
	if Globalzinho.shake_cam == true:
		start_shake()
		print("aaa")
	else:
		Globalzinho.shake_cam = false
	pass



######shake#########
func start_shake(duration=4, frequencia = 15, amplitude =16, priority = 0):
	if priority >= self.priority:
		self.priority = priority
		self.amplitude = amplitude

		$Duration.wait_time=duration
		$Frequencia.wait_time = 1/ float(frequencia)
		$Duration.start()
		$Frequencia.start()
		
		
		_new_shake()
	pass


func _on_Duration_timeout():
	_reset()
	$Frequencia.stop()
	pass # Replace with function body.


func _on_Frequencia_timeout():
	_new_shake()
	pass # Replace with function body.
