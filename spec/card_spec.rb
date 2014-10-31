require 'spec_helper'

describe BlackJack::Card do
  let(:card) { BlackJack::Card.new(:heart, face) }
  let(:face) { 'J' }

  describe 'initialized values' do
    it "reports them publicly" do
      expect(card.suit).to be == :heart
      expect(card.face).to be == face
    end
  end

  describe '#values' do
    context 'when the face is a number' do
      let(:face) { '6' }

      it "returns that number in an array" do
        expect(card.values).to be == [6]
      end
    end

    context 'when face is an ace' do
      let(:face) { 'A' }

      it "returns both 11 and 1" do
        expect(card.values).to be == [1, 11]
      end
    end

    context 'when the face is another court card' do
      context "when 'J'" do
        let(:face) { 'J' }

        it "should be an array with only 10" do
          expect(card.values).to be == [10]
        end
      end

      context "when 'Q'" do
        # write the let
        it "should be an array with only 10" # write the test
      end

      context "when 'K'" do
        # write the let
        it "should be an array with only 10" # write the test
      end
    end
  end
end
