## Card asset path
##
## Given the Card enum, return the card asset path to load

const Card = preload("res://src/card_enums.gd").Card


const CARD_PNG_PATH_PREFIX = "res://assets/cards/"

const CARD_TO_PNG_MAP = {
    Card.TWO_HEARTS: "2_of_hearts.png",
    Card.THREE_HEARTS: "3_of_hearts.png",
    Card.FOUR_HEARTS: "4_of_hearts.png",
    Card.FIVE_HEARTS: "5_of_hearts.png",
    Card.SIX_HEARTS: "6_of_hearts.png",
    Card.SEVEN_HEARTS: "7_of_hearts.png",
    Card.EIGHT_HEARTS: "8_of_hearts.png",
    Card.NINE_HEARTS: "9_of_hearts.png",
    Card.TEN_HEARTS: "10_of_hearts.png",
    Card.JAC_HEARTS: "jack_of_hearts.png",
    Card.QUEEN_HEARTS: "queen_of_hearts.png",
    Card.KING_HEARTS: "king_of_hearts.png",
    Card.ACE_HEARTS: "ace_of_hearts.png",

    Card.TWO_SPADES: "2_of_spades.png",
    Card.THREE_SPADES: "3_of_spades.png",
    Card.FOUR_SPADES: "4_of_spades.png",
    Card.FIVE_SPADES: "5_of_spades.png",
    Card.SIX_SPADES: "6_of_spades.png",
    Card.SEVEN_SPADES: "7_of_spades.png",
    Card.EIGHT_SPADES: "8_of_spades.png",
    Card.NINE_SPADES: "9_of_spades.png",
    Card.TEN_SPADES: "10_of_spades.png",
    Card.JAC_SPADES: "jack_of_spades.png",
    Card.QUEEN_SPADES: "queen_of_spades.png",
    Card.KING_SPADES: "king_of_spades.png",
    Card.ACE_SPADES: "ace_of_spades.png",

    Card.TWO_CLUBS: "2_of_clubs.png",
    Card.THREE_CLUBS: "3_of_clubs.png",
    Card.FOUR_CLUBS: "4_of_clubs.png",
    Card.FIVE_CLUBS: "5_of_clubs.png",
    Card.SIX_CLUBS: "6_of_clubs.png",
    Card.SEVEN_CLUBS: "7_of_clubs.png",
    Card.EIGHT_CLUBS: "8_of_clubs.png",
    Card.NINE_CLUBS: "9_of_clubs.png",
    Card.TEN_CLUBS: "10_of_clubs.png",
    Card.JAC_CLUBS: "jack_of_clubs.png",
    Card.QUEEN_CLUBS: "queen_of_clubs.png",
    Card.KING_CLUBS: "king_of_clubs.png",
    Card.ACE_CLUBS: "ace_of_clubs.png",

    Card.TWO_DIAMONDS: "2_of_diamonds.png",
    Card.THREE_DIAMONDS: "3_of_diamonds.png",
    Card.FOUR_DIAMONDS: "4_of_diamonds.png",
    Card.FIVE_DIAMONDS: "5_of_diamonds.png",
    Card.SIX_DIAMONDS: "6_of_diamonds.png",
    Card.SEVEN_DIAMONDS: "7_of_diamonds.png",
    Card.EIGHT_DIAMONDS: "8_of_diamonds.png",
    Card.NINE_DIAMONDS: "9_of_diamonds.png",
    Card.TEN_DIAMONDS: "10_of_diamonds.png",
    Card.JAC_DIAMONDS: "jack_of_diamonds.png",
    Card.QUEEN_DIAMONDS: "queen_of_diamonds.png",
    Card.KING_DIAMONDS: "king_of_diamonds.png",
    Card.ACE_DIAMONDS: "ace_of_diamonds.png",
}


static func get_card_asset_path(card: int) -> String:
    return CARD_PNG_PATH_PREFIX + CARD_TO_PNG_MAP[card]
