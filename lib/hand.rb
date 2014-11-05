module BlackJack
  class Hand

    def initialize
      @cards = []
    end

    def empty?
      @cards.empty?
    end

    def values
      @cards
    end

    def face

    end

    def add(new_card)
      @cards << new_card
    end

    def size
      @cards.size
    end

    def value
      [@cards.inject(0) {|sum, card| sum + card.values.first }]
    end

  end
end
