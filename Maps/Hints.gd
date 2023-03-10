extends MenuButton

var popup
var kongmenu = PopupMenu.new()
var potionmenu = PopupMenu.new()
var barrelmenu = PopupMenu.new()
var gunmenu = PopupMenu.new()
var musicmenu = PopupMenu.new()
var hintmenu = PopupMenu.new()
var padmenu = PopupMenu.new()
var itemmenu = PopupMenu.new()
var kasplatmenu = PopupMenu.new()


func _ready():
	popup = get_popup()
	
	itemmenu.set_name("Collectibles")
	itemmenu.add_item("Golden Banana")
	itemmenu.add_separator()
	itemmenu.add_item("Bean")
	itemmenu.add_item("Blueprint")
	itemmenu.add_item("Crown")
	itemmenu.add_item("Fairy")
	itemmenu.add_item("Ice Trap")
	itemmenu.add_item("Key")
	itemmenu.add_item("Medal")
	itemmenu.add_item("Nintendo Coin")
	itemmenu.add_item("Pearl")
	itemmenu.add_item("Rainbow Coin")
	itemmenu.add_item("Rareware Coin")
	
	kongmenu.set_name("Kongs")
	kongmenu.add_item("DK")
	kongmenu.add_item("Diddy")
	kongmenu.add_item("Lanky")
	kongmenu.add_item("Tiny")
	kongmenu.add_item("Chunky")
	
	barrelmenu.set_name("Barrels")
	barrelmenu.add_item("Strong Kong")
	barrelmenu.add_item("Rocketbarrel")
	barrelmenu.add_item("Orangestand Sprint")
	barrelmenu.add_item("Mini Monkey")
	barrelmenu.add_item("Hunky Chunky")
	
	gunmenu.set_name("Guns")
	gunmenu.add_item("Coconut")
	gunmenu.add_item("Peanut")
	gunmenu.add_item("Grape")
	gunmenu.add_item("Feather")
	gunmenu.add_item("Pineapple")
	
	musicmenu.set_name("Music")
	musicmenu.add_item("Bongos")
	musicmenu.add_item("Guitar")
	musicmenu.add_item("Trombone")
	musicmenu.add_item("Saxaphone")
	musicmenu.add_item("Triangle")
	
	padmenu.set_name("Pads")
	padmenu.add_item("Baboon Blast")
	padmenu.add_item("Simian Spring")
	padmenu.add_item("Baboon Balloon")
	padmenu.add_item("Monkeyport")
	padmenu.add_item("Gorilla Gone")
	
	potionmenu.set_name("Moves")
	potionmenu.add_item("Gorilla Grab")
	potionmenu.add_item("Chimpy Charge")
	potionmenu.add_item("Orangstand")
	potionmenu.add_item("Ponytail Twirl")
	potionmenu.add_item("Primate Punch")
	potionmenu.add_separator()
	potionmenu.add_item("Simian Slam")
	potionmenu.add_item("Swim")
	potionmenu.add_item("Orange")
	potionmenu.add_item("Barrel Throw")
	potionmenu.add_item("Vine")
	potionmenu.add_item("Sniper")
	potionmenu.add_item("Camera")
	potionmenu.add_item("Shockwave")
	potionmenu.add_item("Homing Ammo")
	potionmenu.add_separator()
	
	potionmenu.add_child(gunmenu)
	potionmenu.add_child(musicmenu)
	potionmenu.add_child(barrelmenu)
	potionmenu.add_child(padmenu)
	potionmenu.add_submenu_item("Guns", "Guns")
	potionmenu.add_submenu_item("Music", "Music")
	potionmenu.add_submenu_item("Barrels", "Barrels")
	potionmenu.add_submenu_item("Pads", "Pads")
	
	kasplatmenu.set_name("Kasplat")
	kasplatmenu.add_item("DK")
	kasplatmenu.add_item("Diddy")
	kasplatmenu.add_item("Lanky")
	kasplatmenu.add_item("Tiny")
	kasplatmenu.add_item("Chunky")
	
	hintmenu.set_name("Hints")
	hintmenu.add_item("WotH")
	hintmenu.add_item("Foolish")
	hintmenu.add_item("Possibly WotH")

	popup.add_child(itemmenu)
	popup.add_submenu_item("Collectibles", "Collectibles")
	popup.add_child(kongmenu)
	popup.add_submenu_item("Kongs", "Kongs")
	popup.add_child(potionmenu)
	popup.add_submenu_item("Moves", "Moves")
	popup.add_separator()
	popup.add_child(kasplatmenu)
	popup.add_submenu_item("Kasplat", "Kasplat")
	popup.add_child(hintmenu)
	popup.add_submenu_item("Hints", "Hints")
	popup.add_separator()
	
	popup.add_item("-Reset-")
	popup.connect("id_pressed", get_parent(), "_on_item_pressed")
	kongmenu.connect("id_pressed", get_parent(), "_kongmenu_pressed")
	potionmenu.connect("id_pressed", get_parent(), "_potionmenu_pressed")
	barrelmenu.connect("id_pressed", get_parent(), "_barrelmenu_pressed")
	gunmenu.connect("id_pressed", get_parent(), "_gunmenu_pressed")
	musicmenu.connect("id_pressed", get_parent(), "_musicmenu_pressed")
	hintmenu.connect("id_pressed", get_parent(), "_hintmenu_pressed")
	padmenu.connect("id_pressed", get_parent(), "_padmenu_pressed")
	itemmenu.connect("id_pressed", get_parent(), "_itemmenu_pressed")
	kasplatmenu.connect("id_pressed", get_parent(), "_kasplatmenu_pressed")

func load_sprites():
	pass

