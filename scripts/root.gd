extends Node2D

var bass = load("res://sounds/drum_bass_soft.wav")
var cymbal_HS = load("res://sounds/drum_cymbal_hard.wav")
var cymbal_CO = load("res://sounds/drum_cymbal_open.wav")
var snare = load("res://sounds/drum_snare_hard.wav")
var splash = load("res://sounds/drum_splash_hard.wav")
var tom_hi = load("res://sounds/drum_tom_hi_hard.wav")
var tom_lo = load("res://sounds/drum_tom_lo_hard.wav")
var tom_mid = load("res://sounds/drum_tom_mid_hard.wav")
var cowbell = load("res://sounds/drum_cowbell.wav")
var cymbal_pedal = load("res://sounds/drum_cymbal_pedal.wav")
var heavy_kick = load("res://sounds/drum_heavy_kick.wav")
var roll = load("res://sounds/drum_roll.wav")

func _ready():
	pass

func _input(event):
	var music = AudioStreamPlayer.new()
	add_child(music)
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_SPACE:
			music.set_stream(bass)
			# music.play()
		if event.scancode == KEY_S:
			music.set_stream(cymbal_HS)
			# music.play()
		if event.scancode == KEY_L:
			music.set_stream(cymbal_CO)
			# music.play()
		if event.scancode == KEY_K:
			music.set_stream(snare)
			# music.play()
		if event.scancode == KEY_A:
			music.set_stream(splash)
			# music.play()
		if event.scancode == KEY_F:
			music.set_stream(tom_hi)
			# music.play()
		if event.scancode == KEY_J:
			music.set_stream(tom_lo)
			# music.play()
		if event.scancode == KEY_D:
			music.set_stream(tom_mid)
			# music.play()
		if event.scancode == KEY_W:
			music.set_stream(cowbell)
			# music.play()
		if event.scancode == KEY_E:
			music.set_stream(cymbal_pedal)
			# music.play()
		if event.scancode == KEY_I:
			music.set_stream(heavy_kick)
			# music.play()
		if event.scancode == KEY_O:
			music.set_stream(roll)
			# music.play()
		music.play()
