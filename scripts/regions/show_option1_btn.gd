extends TextureButton

var active : bool = false
var active_btn : TextureButton = null
var inactive_btn : TextureButton = null

# Called when the node enters the scene tree for the first time.

func set_button(btn):
	self.texture_disabled = btn.texture_disabled
	self.texture_normal = btn.texture_normal
	self.texture_pressed = btn.texture_pressed
	self.texture_hover = btn.texture_hover


func _ready():
	active_btn = TextureButton.new()
	inactive_btn = TextureButton.new()
	Utils.build_check_button(active_btn, inactive_btn, Vector2(17,17), 339829525)
	self.set_button(inactive_btn)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_show_option1_btn_pressed():
	if active:
		self.set_button(inactive_btn)
		active = false
	else:
		self.set_button(active_btn)
		active = true
