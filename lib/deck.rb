module BlackJack
  class Deck

    def initialize
      deck = []

      suit = [:hearts, :spades, :clubs, :diamonds]
      face = ["2","3","4","5","6","7","8","9","10","J", "Q", "K", "A"]

      suit.each do |suit|
        face.each do |face|
          deck << Card.new(face, suit)  #BlackJack::Card
        end
      end

      @deck = deck
    end


    def size
      @deck.size
    end

    def cards
      @deck
    end

    def shuffle
      @deck.shuffle
    end

  end
end
