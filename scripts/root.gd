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
			$spr_red_pad.modulate.a = 1
			if event.shift:
				set_instrument(bass_hard, music)
			else:
				set_instrument(bass_soft, music)
		if event.scancode == KEY_S:
			if event.shift:
				set_instrument(cymbal_hard, music)
			else:
				set_instrument(cymbal_soft, music)
		if event.scancode == KEY_L:
			if event.shift:
				set_instrument(cymbal_open, music)
			else:
				set_instrument(cymbal_closed, music)
		if event.scancode == KEY_K:
			if event.shift:
				set_instrument(snare_hard, music)
			else:
				set_instrument(snare_soft, music)
		if event.scancode == KEY_A:
			if event.shift:
				set_instrument(splash_hard, music)
			else:
				set_instrument(splash_soft, music)
		if event.scancode == KEY_F:
			if event.shift:
				set_instrument(tom_hi_hard, music)
			else:
				set_instrument(tom_hi_soft, music)
		if event.scancode == KEY_J:
			if event.shift:
				set_instrument(tom_lo_hard, music)
			else:
				set_instrument(tom_lo_soft, music)
		if event.scancode == KEY_D:
			if event.shift:
				set_instrument(tom_mid_hard, music)
			else:
				set_instrument(tom_mid_soft, music)
		if event.scancode == KEY_W:
			set_instrument(cowbell, music)
		if event.scancode == KEY_E:
			set_instrument(cymbal_pedal, music)
		if event.scancode == KEY_I:
			set_instrument(heavy_kick, music)
		if event.scancode == KEY_O:
			set_instrument(roll, music)
		music.play()
	else:
		$spr_red_pad.modulate.a = 0.7

func set_instrument(instrument, audio_stream_player):
	audio_stream_player.set_stream(instrument)
	print(instrument.get_length())
