class_name DecBase


var _num_cards = null
var _card_set = []

func _init(card_set: Array) -> void:
    self._card_set = card_set
    self._num_cards = self._card_set.size()
