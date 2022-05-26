extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var check : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if check < get_parent().llaves:
		$AudioStreamPlayer.play()
	$Contador.text = str(get_parent().llaves)
	check = get_parent().llaves
	if get_parent().llaves > 9:
			get_tree().change_scene("res://Scenes/World2.tscn")
	pass
