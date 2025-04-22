extends Area2D

@onready var timer = $Timer # $Timer is a path, equivalent to root/Killzone/Timer

# note here the body refer to the player node, because only player node is
# entering in the killzone
func _on_body_entered(body):
	print("you died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
