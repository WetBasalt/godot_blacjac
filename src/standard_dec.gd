extends DecBase

## The standard 52 card playing dec 
##
## Extends from the DecBase to be used in a Blacjac Dec

class_name StandardDec

const Card = preload("res://src/card_enums.gd").Card

const standard_dec_set = [
    Card.TWO_HEARTS,
    Card.THREE_HEARTS,
    Card.FOUR_HEARTS,
    Card.FIVE_HEARTS,
    Card.SIX_HEARTS,
    Card.SEVEN_HEARTS,
    Card.EIGHT_HEARTS,
    Card.NINE_HEARTS,
    Card.TEN_HEARTS,
    Card.JAC_HEARTS,
    Card.QUEEN_HEARTS,
    Card.KING_HEARTS,
    Card.ACE_HEARTS,

    Card.TWO_SPADES,
    Card.THREE_SPADES,
    Card.FOUR_SPADES,
    Card.FIVE_SPADES,
    Card.SIX_SPADES,
    Card.SEVEN_SPADES,
    Card.EIGHT_SPADES,
    Card.NINE_SPADES,
    Card.TEN_SPADES,
    Card.JAC_SPADES,
    Card.QUEEN_SPADES,
    Card.KING_SPADES,
    Card.ACE_SPADES,

    Card.TWO_CLUBS,
    Card.THREE_CLUBS,
    Card.FOUR_CLUBS,
    Card.FIVE_CLUBS,
    Card.SIX_CLUBS,
    Card.SEVEN_CLUBS,
    Card.EIGHT_CLUBS,
    Card.NINE_CLUBS,
    Card.TEN_CLUBS,
    Card.JAC_CLUBS,
    Card.QUEEN_CLUBS,
    Card.KING_CLUBS,
    Card.ACE_CLUBS,

    Card.TWO_DIAMONDS,
    Card.THREE_DIAMONDS,
    Card.FOUR_DIAMONDS,
    Card.FIVE_DIAMONDS,
    Card.SIX_DIAMONDS,
    Card.SEVEN_DIAMONDS,
    Card.EIGHT_DIAMONDS,
    Card.NINE_DIAMONDS,
    Card.TEN_DIAMONDS,
    Card.JAC_DIAMONDS,
    Card.QUEEN_DIAMONDS,
    Card.KING_DIAMONDS,
    Card.ACE_DIAMONDS,
]


func _init().(standard_dec_set) -> void:
    pass
