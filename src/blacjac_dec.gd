class_name BlacjacDec

## The primary Blacjac Dec to use in games
##
## The Blacjac Dec is created of a single card set repeated any number of
## times. An unshuffled Blacjac Dec is the same order as the card set.
##
## The Blacjac Dec can be shuffled and draw a single card from it.


const Card = preload("res://src/card_enums.gd").Card

var rng = RandomNumberGenerator.new()

var _dec_set: DecBase = null
var _num_decs: int = 0
var _dec_container: Array = []


func _init(dec_set: DecBase, num_decs: int):
    _dec_set = dec_set
    _num_decs = num_decs
    reset()

func _to_string() -> String:
    return _dec_container as String

func _get_dec_size():
    return _num_decs * _dec_set.get_num_cards()

func _initialize_dec_container():
    _dec_container.resize(_get_dec_size())

func _sort_rand_cards(x, y) -> bool:
    return x[0] < y[0]


## Reset the dec by laying in order the set of cards repeated by number of decs
func reset():
    _initialize_dec_container()

    for i in range(_get_dec_size()):
        var index = i % _dec_set.get_num_cards()
        var card_to_set = _dec_set.get_card_set()[index]
        _dec_container[i] = card_to_set

## Supplement every card in the dec with a random number,
## then order the dec in order of random number
func shuffle():
    var max_cards = self._get_dec_size()
    var rand_indicies = []
    
    for i in range(max_cards):
        rng.randomize()
        var rand_num = rng.randf()

        rand_indicies.append([i, rand_num])

    rand_indicies.sort_custom(self, "_sort_rand_cards")

    for i in range(max_cards):
        _dec_container[i] = rand_indicies[i][1]

## Draw a card from the dec
## Returns -1 if the dec is empty
func random_draw() -> int:
    var draw = _dec_container.pop_back()

    if draw == null:
        return -1
    return draw
