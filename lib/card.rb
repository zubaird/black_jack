module BlackJack
  class Card < Struct.new(:suit, :face)
    def values
      return [10] if ['J', 'Q', 'K'].include?(face)
      return [1, 11] if face == 'A'
      [face.to_i]
    end
  end
end
