module BlackJack
  class Hand
    attr_reader :cards

    def initialize
      @cards = []
    end

    def empty?
      cards.empty?
    end
  end
end
