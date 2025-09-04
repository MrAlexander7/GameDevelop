extends Node2D

@export var speed = 10;
@export var isAI = false;
var dirX = 1;
var dirY = 0;
var timeOfmovement = 3;
var timeOfDirChange = 3;

var score = 0;

func _process(delta: float) -> void:
	self.position.x += 1;
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.keycode == KEY_UP || event.keycode == KEY_W:
			self.position.y -= speed;
		if event.keycode == KEY_DOWN || event.keycode == KEY_S:
			self.position.y += speed;
		if event.keycode == KEY_RIGHT || event.keycode == KEY_D:
			self.position.x += speed;
		if event.keycode == KEY_LEFT || event.keycode == KEY_A:
			self.position.x -= speed;
	pass
