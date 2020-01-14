extends Node2D

var bass_hard = load("res://sounds/drum_bass_hard.wav")
var bass_soft = load("res://sounds/drum_bass_soft.wav")
var cymbal_hard = load("res://sounds/drum_cymbal_hard.wav")
var cymbal_soft = load("res://sounds/drum_cymbal_soft.wav")
var cymbal_open = load("res://sounds/drum_cymbal_open.wav")
var cymbal_closed = load("res://sounds/drum_cymbal_closed.wav")
var snare_hard = load("res://sounds/drum_snare_hard.wav")
var snare_soft = load("res://sounds/drum_snare_soft.wav")
var splash_hard = load("res://sounds/drum_splash_hard.wav")
var splash_soft = load("res://sounds/drum_splash_soft.wav")
var tom_hi_hard = load("res://sounds/drum_tom_hi_hard.wav")
var tom_hi_soft = load("res://sounds/drum_tom_hi_soft.wav")
var tom_lo_hard = load("res://sounds/drum_tom_lo_hard.wav")
var tom_lo_soft = load("res://sounds/drum_tom_lo_soft.wav")
var tom_mid_hard = load("res://sounds/drum_tom_mid_hard.wav")
var tom_mid_soft = load("res://sounds/drum_tom_mid_soft.wav")
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
			if event.shift:
				music.set_stream(bass_hard)
			else:
				music.set_stream(bass_soft)
		if event.scancode == KEY_S:
			if event.shift:
				music.set_stream(cymbal_hard)
			else:
				music.set_stream(cymbal_soft)
		if event.scancode == KEY_L:
			if event.shift:
				music.set_stream(cymbal_open)
			else:
				music.set_stream(cymbal_closed)
		if event.scancode == KEY_K:
			if event.shift:
				music.set_stream(snare_hard)
			else:
				music.set_stream(snare_soft)
		if event.scancode == KEY_A:
			if event.shift:
				music.set_stream(splash_hard)
			else:
				music.set_stream(splash_soft)
		if event.scancode == KEY_F:
			if event.shift:
				music.set_stream(tom_hi_hard)
			else:
				music.set_stream(tom_hi_soft)
		if event.scancode == KEY_J:
			if event.shift:
				music.set_stream(tom_lo_hard)
			else:
				music.set_stream(tom_lo_soft)
		if event.scancode == KEY_D:
			if event.shift:
				music.set_stream(tom_mid_hard)
			else:
				music.set_stream(tom_mid_soft)
		if event.scancode == KEY_W:
			music.set_stream(cowbell)
		if event.scancode == KEY_E:
			music.set_stream(cymbal_pedal)
		if event.scancode == KEY_I:
			music.set_stream(heavy_kick)
		if event.scancode == KEY_O:
			music.set_stream(roll)
		music.play()
