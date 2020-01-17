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

var timer = 0.0

var old_value = 0.0
var new_value = 0.0

func _ready():
	print(get_viewport().size.x)
	print(get_viewport().size.y)
	$tp_drum_bass.value = bass_hard.get_length()

func _input(event):
	var music = AudioStreamPlayer.new()
	add_child(music)
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_SPACE:
			$spr_drum_bass.modulate.a = 1
			if event.shift:
				set_instrument(bass_hard, music)
			else:
				set_instrument(bass_soft, music)
		if event.scancode == KEY_A:
			$spr_cymbal_ho.modulate.a = 1
			if event.shift:
				set_instrument(cymbal_hard, music)
			else:
				set_instrument(cymbal_soft, music)
		if event.scancode == KEY_L:
			$spr_cymbal_oc.modulate.a = 1
			if event.shift:
				set_instrument(cymbal_open, music)
			else:
				set_instrument(cymbal_closed, music)
		if event.scancode == KEY_K:
			$spr_snare.modulate.a = 1
			if event.shift:
				set_instrument(snare_hard, music)
			else:
				set_instrument(snare_soft, music)
		if event.scancode == KEY_S:
			$spr_splash.modulate.a = 1
			if event.shift:
				set_instrument(splash_hard, music)
			else:
				set_instrument(splash_soft, music)
		if event.scancode == KEY_D:
			$spr_tom_hi.modulate.a = 1
			if event.shift:
				set_instrument(tom_hi_hard, music)
			else:
				set_instrument(tom_hi_soft, music)
		if event.scancode == KEY_J:
			$spr_tom_lo.modulate.a = 1
			if event.shift:
				set_instrument(tom_lo_hard, music)
			else:
				set_instrument(tom_lo_soft, music)
		if event.scancode == KEY_F:
			$spr_tom_mid.modulate.a = 1
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
		$spr_drum_bass.modulate.a = 0.7
		$spr_tom_hi.modulate.a = 0.7
		$spr_tom_mid.modulate.a = 0.7
		$spr_tom_lo.modulate.a = 0.7
		$spr_cymbal_ho.modulate.a = 0.7
		$spr_cymbal_oc.modulate.a = 0.7
		$spr_snare.modulate.a = 0.7
		$spr_splash.modulate.a = 0.7

func set_instrument(instrument, audio_stream_player):
	audio_stream_player.set_stream(instrument)
	print($tp_drum_bass.value)
	$tp_drum_bass.value += 1
	print($tp_drum_bass.value)
	# print(instrument.get_length())

func _process(delta):
	pass
	# timer += delta
	# if timer >= 1.0:
	# 	timer = 0.0
	# 	old_value = $tp_drum_bass.get_value()
	# 	new_value = old_value - 1
	# 	$tp_drum_bass.set_value($tp_drum_bass.get_value() - 1)
	# 	# label_node.set_text(str(new_value))
	# 	if (new_value) == 0:
	# 		print("Timer finished")
	# 		# set_process(false)
