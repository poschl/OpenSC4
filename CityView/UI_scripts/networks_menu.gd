extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var bottom_left_menu_img = Core.get_subfile("PNG", "UI_IMAGE", 335631845)
	self.texture = bottom_left_menu_img.get_as_texture()
	self.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_networks_btn_pressed():
	self.visible = ! self.visible
