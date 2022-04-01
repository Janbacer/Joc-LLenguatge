extends Node2D


func _ready():
	$KinematicBody2D.gravetat *= 0.4
	$KinematicBody2D.pantalla = 2
	
