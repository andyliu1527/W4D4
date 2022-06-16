require_relative 'deck.rb'
class Hand
    attr_accessor :deck, :hand, :hand_suit, :hand_value
    def initialize
        @deck = Deck.new
        @hand = []
        @hand_value = []
        @hand_suit = []
    end

    def get_hand
        @deck.shuffle!
        5.times do
            @hand << @deck.pop
        end
    end
    
    def get_hand_value
        hash_value = Hahs.new{0}
        @hand.each do |card|
            hash_value[card.value] += 1
            @hand_value << card.value
        end
    end
    
    def get_hand_suit
        hash_suit = Hahs.new{0}
        @hand.each do |card|
            hash_suit[card.suit] += 1
            @hand_suit << card.suit
        end
        hash_suit
    end

    def royal_flush?
        @hand_value.sort == [10,11,12,13,14] && self.get_hand_suit.any?{|k,v| v == 5}
    end
    def straight_flush?
        (0..3).each do |i|
            if !@hand_value[i] +1 == @hand_value[i+1]
                return false
            end
        end
        if !self.get_hand_suit.any?{|k,v| v == 5}
            return false
        end
        return true
    end

    def four_of_a_kind?
        
    end

    def flush?
        self.get_hand_suit.any?{|k,v| v == 5}
    end

    def straight?
        (0..3).each do |i|
            if !@hand_value[i] +1 == @hand_value[i+1]
                return false
            end
        end
    end

end