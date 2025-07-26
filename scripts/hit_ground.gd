extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body:Node2D):
	Engine.time_scale = 0.9
	print ("Kamu Mati")
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	print("Selamat Datang Kembali")
