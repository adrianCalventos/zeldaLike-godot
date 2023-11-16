extends CharacterBody2D

@onready var stats = $Stats;

func _physics_process(delta):
	velocity = velocity.move_toward(Vector2.ZERO, 200*delta);
	move_and_slide();


func _on_hurt_box_area_entered(area):
	stats.health-=1;
	if (stats.health<=0):
		queue_free();
	var knockback_vector = area.knockback_vector;
	velocity =  knockback_vector * 120;
	##queue_free();
