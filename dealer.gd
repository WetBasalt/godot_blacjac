extends Node2D

const card_enums = preload("res://src/card_enums.gd")
const card_asset_loader = preload("res://src/card_asset_path.gd")
const blacjac_dec = preload("res://src/blacjac_dec.gd")
const standard_dec = preload("res://src/standard_dec.gd")

const Card = card_enums.Card

# Called when the node enters the scene tree for the first time.
func _ready():
    print(card_asset_loader.get_card_asset_path(Card.TEN_HEARTS))

    var standard_dec_type = standard_dec.new()
    var game_dec = blacjac_dec.new(standard_dec_type, 2)
    print(game_dec)

    # add a comment test


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
    # pass


func _on_Button_pressed():
    pass

func _on_Button2_pressed():
	pass # Replace with function body.
