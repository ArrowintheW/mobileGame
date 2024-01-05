extends Node2D
@onready var l_scene = preload("res://l.tscn")
@onready var reta_scene = preload("res://reta.tscn")
@onready var i = 0
@onready var linha = [7]
@onready var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	random_line(0)
	
func _process(delta):
	pass
	
func instantiate_block(instance, block, height):
		add_child(instance)
		instance.global_position = Vector2((block*115.2)+57.6,height)
		
func random_line(first):
	if first == 0:
		for line in range(20):
			for block in range(5):
				#var rn = rng.randi_range(0, 1)
				var rn = 1
				if rn ==0 :
					var l_instance=l_scene.instantiate()
					instantiate_block(l_instance, block,(115.2*line)+57.6)
				elif rn == 1:
					var reta_instance=reta_scene.instantiate()
					instantiate_block(reta_instance, block,(115.2*line)+57.6)
	else:
		for block in range(5):
			var rn = rng.randi_range(0, 1)
			if rn ==0 :
				var l_instance=l_scene.instantiate()
				instantiate_block(l_instance, block,57.6)
			elif rn == 1:
				var reta_instance=reta_scene.instantiate()
				instantiate_block(reta_instance, block,57.6)
