extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var BlueBackground = preload("res://assets/Cards/Backgrounds/Blue.png")
onready var GreenBackground = preload("res://assets/Cards/Backgrounds/Green.png")
onready var PinkBackground = preload("res://assets/Cards/Backgrounds/Pink.png")
onready var YellowBackground = preload("res://assets/Cards/Backgrounds/Yellow.png")
onready var RocketBackground = preload("res://assets/Cards/Backgrounds/Rocket.png")

onready var Logo1 = preload("res://assets/Cards/Logo/1.png")
onready var Logo2 = preload("res://assets/Cards/Logo/2.png")
onready var Logo3 = preload("res://assets/Cards/Logo/3.png")
onready var Logo4 = preload("res://assets/Cards/Logo/4.png")
onready var Logo5 = preload("res://assets/Cards/Logo/5.png")
onready var Logo6 = preload("res://assets/Cards/Logo/6.png")
onready var Logo7 = preload("res://assets/Cards/Logo/7.png")
onready var Logo8 = preload("res://assets/Cards/Logo/8.png")
onready var Logo9 = preload("res://assets/Cards/Logo/9.png")

onready var Number1 = preload("res://assets/Cards/Number/1.png")
onready var Number2 = preload("res://assets/Cards/Number/2.png")
onready var Number3 = preload("res://assets/Cards/Number/3.png")
onready var Number4 = preload("res://assets/Cards/Number/4.png")
onready var Number5 = preload("res://assets/Cards/Number/5.png")
onready var Number6 = preload("res://assets/Cards/Number/6.png")
onready var Number7 = preload("res://assets/Cards/Number/7.png")
onready var Number8 = preload("res://assets/Cards/Number/8.png")
onready var Number9 = preload("res://assets/Cards/Number/9.png")

enum {Blue, Green, Pink, Yellow, Rocket}

var CardNumber = 1
var CardSuit = Blue

# Called when the node enters the scene tree for the first time.
func _ready():
	DrawCard()
	
func DrawCard():
	match CardSuit:
		Blue:
			$Background.texture = BlueBackground
		Green:
			$Background.texture = GreenBackground
		Pink:
			$Background.texture = PinkBackground
		Yellow:
			$Background.texture = YellowBackground
		Rocket:
			$Background.texture = RocketBackground
	
	if CardSuit == Rocket:
		$Logo.texture = null
	else:
		match CardNumber:
			1:
				$Logo.texture = Logo1
			2:
				$Logo.texture = Logo2
			3:
				$Logo.texture = Logo3
			4:
				$Logo.texture = Logo4
			5:
				$Logo.texture = Logo5
			6:
				$Logo.texture = Logo6
			7:
				$Logo.texture = Logo7
			8:
				$Logo.texture = Logo8
			9:
				$Logo.texture = Logo9
	
	match CardNumber:
		1:
			$NumberTop.texture = Number1
			$NumberBottom.texture = Number1
		2:
			$NumberTop.texture = Number2
			$NumberBottom.texture = Number2
		3:
			$NumberTop.texture = Number3
			$NumberBottom.texture = Number3
		4:
			$NumberTop.texture = Number4
			$NumberBottom.texture = Number4
		5:
			$NumberTop.texture = Number5
			$NumberBottom.texture = Number5
		6:
			$NumberTop.texture = Number6
			$NumberBottom.texture = Number6
		7:
			$NumberTop.texture = Number7
			$NumberBottom.texture = Number7
		8:
			$NumberTop.texture = Number8
			$NumberBottom.texture = Number8
		9:
			$NumberTop.texture = Number9
			$NumberBottom.texture = Number9
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func _input(event):
#	if Input.is_action_pressed("ui_page_down"):
#		IncrementCard()	

func IncrementCard():
	match CardSuit:
		Blue:
			if CardNumber >= 9:
				CardNumber = 1
				CardSuit = Green
			else:
				CardNumber += 1
		Green:
			if CardNumber >= 9:
				CardNumber = 1
				CardSuit = Pink
			else:
				CardNumber += 1
		Pink:
			if CardNumber >= 9:
				CardNumber = 1
				CardSuit = Yellow
			else:
				CardNumber += 1
		Yellow:
			if CardNumber >= 9:
				CardNumber = 1
				CardSuit = Rocket
			else:
				CardNumber += 1
		Rocket:
			if CardNumber >= 4:
				CardNumber = 1
				CardSuit = Blue
			else:
				CardNumber += 1
	DrawCard()

