extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$KinematicBody2D.pantalla = 3
	$KinematicBody2D.velocitat_base *= 0.5
	$KinematicBody2D.gravetat *= 1.2
	$KinematicBody2D.salt *= 0.8
	
