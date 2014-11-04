module BlackJack
  class Card

    def initialize(suit,face)
      @suit = suit
      @face = face
    end

    def suit
      @suit
    end

    def face
      @face
    end

    def values
      if @face == "A"
        [1,11]
      elsif @face.match(/[^JQK]/) == nil
        [10]
      else
        [@face.to_i]
      end
    end

    def == (new_card)
      @face == new_card.face && @suit == new_card.suit
    end


  end
end
