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
	set_process(true)

func _process(delta):
	var music = AudioStreamPlayer.new()
	add_child(music)
	if Input.is_action_just_pressed("bass"):
		music.set_stream(bass)
		music.play()
	if Input.is_action_just_pressed("cymbal_HS"):
		music.set_stream(cymbal_HS)
		music.play()
	if Input.is_action_just_pressed("cymbal_CO"):
		music.set_stream(cymbal_CO)
		music.play()
	if Input.is_action_just_pressed("snare"):
		music.set_stream(snare)
		music.play()
	if Input.is_action_just_pressed("splash"):
		music.set_stream(splash)
		music.play()
	if Input.is_action_just_pressed("tom_hi"):
		music.set_stream(tom_hi)
		music.play()
	if Input.is_action_just_pressed("tom_lo"):
		music.set_stream(tom_lo)
		music.play()
	if Input.is_action_just_pressed("tom_mid"):
		music.set_stream(tom_mid)
		music.play()
	if Input.is_action_just_pressed("cowbell"):
		music.set_stream(cowbell)
		music.play()
	if Input.is_action_just_pressed("cymbal_pedal"):
		music.set_stream(cymbal_pedal)
		music.play()
	if Input.is_action_just_pressed("heavy_kick"):
		music.set_stream(heavy_kick)
		music.play()
	if Input.is_action_just_pressed("roll"):
		music.set_stream(roll)
		music.play()