extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
		Utils.build_button(self, Vector2(40,36), 333533105)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_save_btn_pressed():
	Logger.warn("Save button - not yet implemented.")