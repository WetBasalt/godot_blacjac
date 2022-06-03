## The Dec Base Abstraction
##
## The game allows for any type of dec to be used. For example a 52 card dec,
## or a 52 card dec with a joker for 21CB!
##
## Any dec must extend DecBase to be used in a Blacjac Dec

class_name DecBase


var _num_cards: int = 0
var _card_set: Array = []

func _init(card_set: Array):
    _card_set = card_set
    _num_cards = _card_set.size()

func get_num_cards() -> int:
    return _num_cards

func get_card_set() -> Array:
    return _card_set
