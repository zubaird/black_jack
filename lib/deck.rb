module BlackJack
  class Deck
    attr_reader :cards

    def initialize
      @cards = []
      fill_deck
    end

    def size
      cards.size
    end

    def shuffle
      @cards = cards.shuffle
    end

    def deal
      cards.shift
    end

    def fill_deck
      ((2..10).to_a + ['J', 'Q', 'K', 'A']).each do |face|
        [:heart, :club, :spade, :diamond].each do |suit|
          cards << BlackJack::Card.new(suit, face)
        end
      end
    end
  end
end
