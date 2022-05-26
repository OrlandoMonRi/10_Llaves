extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var check3 : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if check3 < get_parent().llaves3:
		$AudioStreamPlayer.play()
	$Contador.text = str(get_parent().llaves3)
	check3 = get_parent().llaves3
	if get_parent().llaves3 > 9:
			get_tree().quit()
	pass
