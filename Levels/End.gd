extends Control

func _ready():
	if GlobalFlags.speedrun_mode:
		$Time.visible = true
		$Time.text = str("Time: ", SpeedrunTimer.time_passed)

func _physics_process(delta):
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func _on_Button_pressed():
	get_tree().change_scene("res://Title Screen/Title Screen.tscn")
