extends TileMap


var cities : Array = []
var width : int = 0
var height : int = 0

var last_hovered_city = null

func init_cities_array(width_, height_):
	self.width = width_
	self.height = height_
	for i in range(width_):
		cities.append([])
		for _j in range(height_):
			cities[i].append(null)

func _unhandled_input(event):
	if event is InputEventMouseButton and event.doubleclick:
		# Get the grid position
		var grid_position : Vector2 = world_to_map(get_global_mouse_position())
		if grid_position.x >= 0 and grid_position.x < width and grid_position.y >= 1 and grid_position.y < height:
			cities[grid_position.x][grid_position.y].open_city()
			
	if event is InputEventMouseButton and event.pressed:
		var grid_position : Vector2 = world_to_map(get_global_mouse_position())
		if grid_position.x >= 0 and grid_position.x < width and grid_position.y >= 0 and grid_position.y < height:			
			pass
			
			
	if event is InputEventMouse and event.position:
		var grid_position : Vector2 = world_to_map(get_global_mouse_position())
		if grid_position.x >= 0 and grid_position.x < width and grid_position.y >= 0 and grid_position.y < height:
			
			var current_hovered_city = cities[grid_position.x][grid_position.y]
			if last_hovered_city != current_hovered_city:
				if last_hovered_city:
					last_hovered_city.on_mouse_unhovered()
				current_hovered_city.on_mouse_hovered()
				last_hovered_city = current_hovered_city
			
			
		
