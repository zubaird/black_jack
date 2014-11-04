module BlackJack
  class Hand

    def initialize
      @values = []
    end

    def empty?
      true
    end

    def values
      @values
    end

    def add(new_card)
      @values ||= []
      @values << new_card
    end

    def size
      @values.size
    end

  end
end
