extends Area2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $CollisionShape2D/AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	print("+1 Coin")
	queue_free()
	
