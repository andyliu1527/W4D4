class Card
    VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
    SUITS = ["diamond", "club", "heart", "spade"]
    def initialize(value, suit)
        @value = value
        @suit = suit
    end

    def self.value
        VALUES
    end

    def self.suit
        SUITS
    end

end