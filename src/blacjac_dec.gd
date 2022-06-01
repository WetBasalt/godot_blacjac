class_name BlacjacDec


"""
1. Instantiate deck based on number of decks
2. Reset deck
3. Random draw
"""

var _dec_type = null
var _num_decks = null
var _dec_array = []


func _init(dec_type: DecBase, num_decks: int) -> void:
    self._dec_type = dec_type
    self._num_decks = num_decks
    self.set_dec_size()

func set_dec_size() -> void:
    self._dec_array.resize(self._num_decks * self._dec_type._num_cards)
    self.reset_dec()

func reset_dec() -> void:
    for i in range(self._dec_array.size()):
        self._dec_array[i] = 0
        
func _to_string() -> String:
    return self._dec_array as String
