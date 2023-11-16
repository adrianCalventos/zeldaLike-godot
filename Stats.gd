extends Node

@export var max_health = 1;
@onready var health = max_health:
	get: 
		return health
	set(value): 
		print("hi");
		health = value
		if health <= 0:
			emit_signal("no_health")
			

signal noHealth;
