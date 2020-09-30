require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Arrange
      value = 2
      suit = :diamonds

      # Act
      card = Card.new(value, suit)

      #Assert
      expect(card.to_s).must_equal "2 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Arrange
      suit = :diamonds

      # Act
      card1 = Card.new(1, suit)
      card11 = Card.new(11, suit)
      card12 = Card.new(12, suit)
      card13 = Card.new(13, suit)

      #Assert
      expect(card1.to_s).must_equal "Ace of diamonds"
      expect(card11.to_s).must_equal "Jack of diamonds"
      expect(card12.to_s).must_equal "Queen of diamonds"
      expect(card13.to_s).must_equal "King of diamonds"
    end
  end

  describe "Reader methods" do
    it "Can retrieve the value of the card using a `.value`." do
      expect(Card.new(1, :diamonds).value).must_equal 1
    end

    it "Can retrieve the value of the card using a `.suit`." do
      expect(Card.new(1, :diamonds).suit).must_equal :diamonds
    end
  end

end
