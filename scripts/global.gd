extends Node



# Level Management
var level = 1
var chapter = 1



func nextlevel():
	var temppath = "res://scenes/chapters/%s/level_%s.tscn"
	var pathname = temppath % [chapter, level+1]
	if ResourceLoader.exists(pathname):
		level += 1
		get_tree().change_scene_to_file(pathname)
	else:
		get_tree().change_scene_to_file(get_tree().current_scene.scene_file_path)




var ch1 = [
	"res://scenes/chapters/1/level_1.tscn",
]
