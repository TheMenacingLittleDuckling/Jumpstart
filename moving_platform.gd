extends AnimatableBody2D

@export var move_offset := Vector2(200, 0)  # how far it travels
@export var duration := 2.0                 # seconds each way

func _ready() -> void:
	var tween := create_tween()
	tween.set_loops()
	tween.set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "position", position + move_offset, duration)
	tween.tween_property(self, "position", position, duration)
