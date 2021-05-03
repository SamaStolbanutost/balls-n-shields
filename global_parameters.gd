extends Node

var score = 0
var _game = true # is playing now, or losed
var speed = 0.5
var movespeed = 2000
var game_mode = "lr"

# Sounds & music
var laser_pre_sound = load("res://sounds/laser_pre.wav")
var laser_sound = load("res://sounds/laser.wav")
var balls_pre_sound = load("res://sounds/balls_pre.wav")
var balls_sound = load("res://sounds/balls.wav")
var death_sound = load("res://sounds/death.wav")
var select_sound = load("res://sounds/select.wav")
