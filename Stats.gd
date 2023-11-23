extends Node

@export var max_health :int= 1;
@onready var health = max_health:
	get: 
		return health
	set(value): 		
		health = value
		print(health,"/",max_health);
		if health <= 0:
			emit_signal("noHealth")
			

signal noHealth;
