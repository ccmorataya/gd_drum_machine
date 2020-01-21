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

onready var instrument_dict = {
	"bass": [
		bass_hard,
		bass_soft,
		$tp_drum_bass
	],
	"cymbal_hs": [
		cymbal_hard,
		cymbal_soft,
		$tp_cymbal_hs
	],
	"cymbal_oc": [
		cymbal_open,
		cymbal_closed,
		$tp_cymbal_oc
	],
	"snare": [
		snare_hard,
		snare_soft,
		$tp_snare
	],
	"splash": [
		splash_hard,
		splash_soft,
		$tp_splash
	],
	"tom_hi": [
		tom_hi_hard,
		tom_hi_soft,
		$tp_tom_hi
	],
	"tom_mid": [
		tom_mid_hard,
		tom_mid_soft,
		$tp_tom_mid
	],
	"tom_lo": [
		tom_lo_hard,
		tom_lo_soft,
		$tp_tom_lo
	]
}

func _ready():
	OS.set_window_size(Vector2(320,240))

func _input(event):
	var music = AudioStreamPlayer.new()
	add_child(music)
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_SPACE:
			if event.shift:
				set_instrument(instrument_dict["bass"], true, music)
			else:
				set_instrument(instrument_dict["bass"], false, music)
		if event.scancode == KEY_S:
			if event.shift:
				set_instrument(instrument_dict["cymbal_hs"], true, music)
			else:
				set_instrument(instrument_dict["cymbal_hs"], false, music)
		if event.scancode == KEY_L:
			if event.shift:
				set_instrument(instrument_dict["cymbal_oc"], true, music)
			else:
				set_instrument(instrument_dict["cymbal_oc"], false, music)
		if event.scancode == KEY_D:
			if event.shift:
				set_instrument(instrument_dict["snare"], true, music)
			else:
				set_instrument(instrument_dict["snare"], false, music)
		if event.scancode == KEY_G or event.scancode == KEY_H:
			if event.shift:
				set_instrument(instrument_dict["splash"], true, music)
			else:
				set_instrument(instrument_dict["splash"], false, music)
		if event.scancode == KEY_F:
			if event.shift:
				set_instrument(instrument_dict["tom_hi"], true, music)
			else:
				set_instrument(instrument_dict["tom_hi"], false, music)
		if event.scancode == KEY_K:
			if event.shift:
				set_instrument(instrument_dict["tom_lo"], true, music)
			else:
				set_instrument(instrument_dict["tom_lo"], false, music)
		if event.scancode == KEY_J:
			if event.shift:
				set_instrument(instrument_dict["tom_mid"], true, music)
			else:
				set_instrument(instrument_dict["tom_mid"], false, music)
		# if event.scancode == KEY_W:
		# 	set_instrument(cowbell, music)
		# if event.scancode == KEY_E:
		# 	set_instrument(cymbal_pedal, music)
		# if event.scancode == KEY_I:
		# 	set_instrument(heavy_kick, music)
		# if event.scancode == KEY_O:
		# 	set_instrument(roll, music)
		music.play()

func set_instrument(instrument_array, isHard, audio_stream_player):
	audio_stream_player.set_stream(instrument_array[0] if isHard else instrument_array[1])
	instrument_array[2].max_value = (instrument_array[0].get_length() if isHard else instrument_array[1].get_length() * 100) - 20
	instrument_array[2].max_value = instrument_array[2].max_value + 20 if instrument_array[2].max_value <= 0 else instrument_array[2].max_value
	instrument_array[2].value = instrument_array[2].max_value

func _process(delta):
	for instrument in instrument_dict.values():
		if instrument[2].value > 0:
			instrument[2].value -= 1
