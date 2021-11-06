class_name Weapon
extends Position2D

const Projectile := preload("res://src/Weapons/Projectile.tscn")

onready var cooldown_timer := $Cooldown

func attack() -> void:
	if cooldown_timer.is_stopped():
		cooldown_timer.start()
		var projectile = Projectile.instance()
		projectile.global_position = global_position
		projectile.set_as_toplevel(true)
		add_child(projectile)
