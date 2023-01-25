extends Node

const _PRINT_DEBUG: bool = true


func print_dict(dict, _node:Node):
	if _PRINT_DEBUG:		
		for key in dict:
			print(key)
			for key2 in dict[key]:
				print("\t" + key2 + " = " + dict[key][key2])


func _DEBUG_extract_files(type_id, group_id):
	var list_of_instances = Core.get_list_instances(type_id, group_id)
	if type_id == "PNG":
		for item in list_of_instances:
			# Filter bad numbers, maybe holes? I don't know
			if item in [1269886195,339829152, 339829153, 
						339829154, 339829155, 1809881377, 
						1809881378, 1809881379, 1809881380,
						1809881381, 1809881382, 3929989376,
						3929989392, 3929989408, 3929989424,
						3929989440, 3929989456, 338779648,
						338779664, 338779680, 338779696,
						338779712, 338779728, 338779729,
						733031711, 3413654842]:
				continue
			var subfile = Core.get_subfile(type_id, group_id, item)
			var img = subfile.get_as_texture().get_data()
			var path = "user://%s/%s/%s.png" % [type_id, group_id, item]
			img.save_png(path)
	elif type_id == "FSH":
		for item in list_of_instances:
			if item in []:
				continue
			var subfile = Core.get_subfile(type_id, group_id, item)
			var img = subfile.get_as_texture().get_data()
			var path = "user://%s/%s/%s.png" % [type_id, group_id, item]
			img.save_png(path)
	elif type_id == "unknown_type1":
		for item in list_of_instances:
			if item in [3,15,16,18, 2281851650, 1239495264, 1239495265, 1239495266,
						1239495267, 1239495268, 1239495269, 1239495270, 1239495271,
						164013518, 977001199, 2345972776, 3355593495, 1744980750,
						1247599674, 1247599675, 1247599676, 1247599677, 1247599678,
						1247599679, 1247599680, 2296843126, 1122252031, 1725629824,
						2708411491, 1776367472, 1776367473, 1776367474, 1776367475,
						1776367476, 1776367477, 1776367478, 1776367479, 3783613148,
						700884431, 3959015778, 3959015793, 1128275057, 3892464403]:
				continue
			var subfile = Core.get_subfile(type_id, group_id, item)
			var img = subfile.get_as_texture().get_data()
			var path = "user://%s/%s/%s.png" % [type_id, group_id, item]
			img.save_png(path)
			
	else:
		Logger.wanr("Type: %s is not yet implemented." % type_id)
