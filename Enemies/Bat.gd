extends CharacterBody2D

@onready var stats = $Stats;

func _physics_process(delta):
	velocity = velocity.move_toward(Vector2.ZERO, 200*delta);
	move_and_slide();


func _on_hurt_box_area_entered(area):
	stats.health-=area.damage;
	velocity =  area.knockback_vector * 120;
	##queue_free();


func _on_stats_no_health():
	queue_free();
