extends Control

# "Oh wow, this looks terrible" -Funny Swedish Gamer (but not PewDiePie)

func _input(event):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://Title Screen/Title Screen.tscn")
	$VBoxContainer/SpeedrunMode.pressed = GlobalFlags.speedrun_mode

func _ready():
	if AudioServer.is_bus_mute(2):
		$VBoxContainer/MuteMusic.text = "Unmute Music"
		$VBoxContainer/MuteMusic.pressed = true
	if AudioServer.is_bus_mute(1):
		$VBoxContainer/MuteSFX.text = "Unmute SFX"
		$VBoxContainer/MuteSFX.pressed = true

func _on_MuteMusic_toggled(button_pressed):
	if button_pressed:
		$VBoxContainer/MuteMusic.text = "Unmute Music"
		AudioServer.set_bus_mute(2, true)
	else:
		$VBoxContainer/MuteMusic.text = "Mute Music"
		AudioServer.set_bus_mute(2, false)

func _on_MuteSFX_toggled(button_pressed):
	if button_pressed:
		$VBoxContainer/MuteSFX.text = "Unmute SFX"
		AudioServer.set_bus_mute(1, true)
	else:
		$VBoxContainer/MuteSFX.text = "Mute SFX"
		AudioServer.set_bus_mute(1, false)

func _on_MainMenu_pressed():
	get_tree().change_scene("res://Title Screen/Title Screen.tscn")

func _on_SpeedrunMode_toggled(button_pressed):
	GlobalFlags.speedrun_mode = button_pressed
