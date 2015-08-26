class Card

  def initialize(suit, value)
    @suit = suit               # => "spades", :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :c...
    @value = value             # => 10, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"
  end

end

class Deck

  def initialize()
    suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]

    suits.each do |suit|                # => [:hearts, :diamonds, :spades, :clubs]
      (2..10).each do |value|           # => 2..10, 2..10, 2..10, 2..10
        @cards = Card.new(suit, value)  # => #<Card:0x007fdba916b6b0 @suit=:hearts, @value=2>, #<Card:0x007fdba916b480 @suit=:hearts, @value=3>, #<Card:0x007fdba916b2c8 @suit=:hearts, @value=4>, #<Card:0x007fdba916b098 @suit=:hearts, @value=5>, #<Card:0x007fdba916ae90 @suit=:hearts, @value=6>, #<Card:0x007fdba916ad00 @suit=:hearts, @value=7>, #<Card:0x007fdba916ab70 @suit=:hearts, @value=8>, #<Card:0x007fdba916a9e0 @suit=:hearts, @value=9>, #<Card:0x007fdba916a850 @suit=:hearts, @value=10>, #...
    end                                 # => 2..10, 2..10, 2..10, 2..10
    @cards = Card.new(suit, "J")        # => #<Card:0x007fdba916a530 @suit=:hearts, @value="J">, #<Card:0x007fdba9168b40 @suit=:diamonds, @value="J">, #<Card:0x007fdba9162fb0 @suit=:spades, @value="J">, #<Card:0x007fdba91613b8 @suit=:clubs, @value="J">
    @cards = Card.new(suit, "Q")        # => #<Card:0x007fdba916a2d8 @suit=:hearts, @value="Q">, #<Card:0x007fdba9168960 @suit=:diamonds, @value="Q">, #<Card:0x007fdba9162d08 @suit=:spades, @value="Q">, #<Card:0x007fdba9161160 @suit=:clubs, @value="Q">
    @cards = Card.new(suit, "K")        # => #<Card:0x007fdba916a080 @suit=:hearts, @value="K">, #<Card:0x007fdba9168780 @suit=:diamonds, @value="K">, #<Card:0x007fdba9162b00 @suit=:spades, @value="K">, #<Card:0x007fdba9160fa8 @suit=:clubs, @value="K">
    @cards = Card.new(suit, "A")        # => #<Card:0x007fdba9169e28 @suit=:hearts, @value="A">, #<Card:0x007fdba9168528 @suit=:diamonds, @value="A">, #<Card:0x007fdba9162830 @suit=:spades, @value="A">, #<Card:0x007fdba9160d28 @suit=:clubs, @value="A">
    end                                 # => [:hearts, :diamonds, :spades, :clubs]
  end

end


card1 = Card.new("spades", 10)  # => #<Card:0x007fdba916bf98 @suit="spades", @value=10>

deck1 = Deck.new  # => #<Deck:0x007fdba916bb38 @cards=#<Card:0x007fdba9160d28 @suit=:clubs, @value="A">>
