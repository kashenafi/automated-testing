
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError unless (1..13).to_a.include?(value)
    raise ArgumentError unless [:hearts, :spades, :clubs, :diamonds].include?(suit)
    @value = value
    @suit = suit
  end

  def value_to_face_converter(value)
    case value
    when 1
      face = :Ace
    when 11
      face = :Jack
    when 12
      face = :Queen
    when 13
      face = :King
    end
    return face
  end

  def to_s
    if [1, 11, 12, 13].include?(@value)
      return "#{self.value_to_face_converter(@value).to_s} of #{@suit.to_s}"
    else
      return "#{@value} of #{@suit.to_s}"
    end
  end

end
