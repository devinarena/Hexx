extends Node

export(String) var enemy

func _ready():
	$GUI/PlayerGUI/AttackButtons/Attack1.text = Player.attack1
	$GUI/PlayerGUI/AttackButtons/Attack2.text = Player.attack2
	$GUI/PlayerGUI/AttackButtons/Attack3.text = Player.attack3
	$GUI/PlayerGUI/AttackButtons/Attack4.text = Player.attack4
	
	for button in $GUI/PlayerGUI/AttackButtons.get_children():
		if button.text.length() == 0:
			button.disabled = true
		else:
			button.disabled = false
