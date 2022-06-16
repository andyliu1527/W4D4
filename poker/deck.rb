require_relative 'card.rb'

class Deck
    def initialize
        @deck = []
        Card.value.each do |value|
            Card.suit.each do |suit|
                @deck << Card.new(value, suit)
            end
        end
    end





end