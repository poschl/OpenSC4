extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func build_check_button(active_btn, inactive_btn, size : Vector2, instance_id : int):
	var btn_img = Core.get_subfile("PNG", "UI_IMAGE", instance_id)
	active_btn.texture_disabled = AtlasTexture.new()
	active_btn.texture_disabled.atlas = btn_img.get_as_texture()
	active_btn.texture_disabled.region = Rect2(size.x*6, 0, size.x , size.y)
	
	active_btn.texture_normal = AtlasTexture.new()
	active_btn.texture_normal.atlas = btn_img.get_as_texture()
	active_btn.texture_normal.region = Rect2(0, 0, size.x ,size.y)
	
	active_btn.texture_pressed = AtlasTexture.new()
	active_btn.texture_pressed.atlas = btn_img.get_as_texture()
	active_btn.texture_pressed.region = Rect2(size.x*4, 0, size.x ,size.y)
	
	active_btn.texture_hover = AtlasTexture.new()
	active_btn.texture_hover.atlas = btn_img.get_as_texture()
	active_btn.texture_hover.region = Rect2(size.x*2, 0, size.x ,size.y)
	
	
	inactive_btn.texture_disabled = AtlasTexture.new()
	inactive_btn.texture_disabled.atlas = btn_img.get_as_texture()
	inactive_btn.texture_disabled.region = Rect2(size.x*7, 0, size.x , size.y)
	
	inactive_btn.texture_normal = AtlasTexture.new()
	inactive_btn.texture_normal.atlas = btn_img.get_as_texture()
	inactive_btn.texture_normal.region = Rect2(size.x, 0, size.x ,size.y)
	
	inactive_btn.texture_pressed = AtlasTexture.new()
	inactive_btn.texture_pressed.atlas = btn_img.get_as_texture()
	inactive_btn.texture_pressed.region = Rect2(size.x*5, 0, size.x ,size.y)
	
	inactive_btn.texture_hover = AtlasTexture.new()
	inactive_btn.texture_hover.atlas = btn_img.get_as_texture()
	inactive_btn.texture_hover.region = Rect2(size.x*3, 0, size.x ,size.y)
	

func build_button(button, size : Vector2, instance_id : int):
	var btn_img = Core.get_subfile("PNG", "UI_IMAGE", instance_id)
	button.texture_disabled = AtlasTexture.new()
	button.texture_disabled.atlas = btn_img.get_as_texture()
	button.texture_disabled.region = Rect2(0, 0, size.x , size.y)
	
	button.texture_normal = AtlasTexture.new()
	button.texture_normal.atlas = btn_img.get_as_texture()
	button.texture_normal.region = Rect2(size.x, 0, size.x ,size.y)
	
	button.texture_pressed = AtlasTexture.new()
	button.texture_pressed.atlas = btn_img.get_as_texture()
	button.texture_pressed.region = Rect2(size.x*2, 0, size.x ,size.y)
	
	button.texture_hover = AtlasTexture.new()
	button.texture_hover.atlas = btn_img.get_as_texture()
	button.texture_hover.region = Rect2(size.x*3, 0, size.x ,size.y)
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
