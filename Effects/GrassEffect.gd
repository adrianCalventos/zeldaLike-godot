extends Node2D

@onready var animatedSprite = $AnimatedSprite;
# Called when the node enters the scene tree for the first time.
func _ready():
	animatedSprite.play("Animate");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack"):
		animatedSprite.play("Animate");


func _on_animated_sprite_animation_finished():
	queue_free();
