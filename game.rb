class Deck

  def initialize
    @cards = []
    suits = [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|
      (2..10).each do |value|
        @cards << Card.new(suit, value)
      end
    @cards << Card.new(suit, "J")
    @cards << Card.new(suit, "Q")
    @cards << Card.new(suit, "K")
    @cards << Card.new(suit, "A")
    end
  end

  def draw
    @cards.pop
  end

  def shuffle
    @cards.shuffle!
  end

  def length
    @cards.length
  end

end

class Card

  def initialize(suit, value)
    @suit = suit
    @value = value
    @num_value = 0
  end

  def get_suit
    @suit
  end

  def get_value
    @value
  end

  def get_num_value
    if @value == "J" || @value == "Q" || @value == "K"
      @num_value = 10
    elsif @value == "A"
      @num_value = 11
    else
      @num_value = @value
    end
  end

  def display
    "#{@value} of #{@suit}"
  end

end

class Player

  def initialize
    @hand_value = 0
  end

  def set_hand(card_1, card_2)
    @hand_value = card_1.get_num_value + card_2.get_num_value
    @hand = []
    @hand.push(card_1, card_2)
  end

  def hand
    @hand
  end

end












# deck = Deck.new                        # => #<Deck:0x007fb0b315a8e0 @cards=[#<Card:0x007fb0b315a278 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fb0b3159da0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fb0b31599e0 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fb0b3159558 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fb0b3158fe0 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fb0b31588d8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fb0b31581a8 @suit=:hearts...
# deck.shuffle                           # => [#<Card:0x007fb0b3113df0 @suit=:spades, @value=6, @num_value=0>, #<Card:0x007fb0b3143f28 @suit=:diamonds, @value=5, @num_value=0>, #<Card:0x007fb0b30709e8 @suit=:clubs, @value=9, @num_value=0>, #<Card:0x007fb0b3133b78 @suit=:diamonds, @value="J", @num_value=0>, #<Card:0x007fb0b3158fe0 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fb0b315a278 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fb0b31506d8 @suit=:hearts, @value="A", @num_value=0...
# player = Player.new                    # => #<Player:0x007fb0b30304b0 @hand_value=0>
# player.set_hand(deck.draw, deck.draw)  # => [#<Card:0x007fb0b31398c0 @suit=:diamonds, @value=10, @num_value=10>, #<Card:0x007fb0b3141e30 @suit=:diamonds, @value=7, @num_value=7>]

# player.hand.each do |card| puts card.display end  # => [#<Card:0x007fb0b31398c0 @suit=:diamonds, @value=10, @num_value=10>, #<Card:0x007fb0b3141e30 @suit=:diamonds, @value=7, @num_value=7>]

# player.set_hand(deck.draw, deck.draw)  # => [#<Card:0x007fb0b31310a8 @suit=:diamonds, @value="K", @num_value=10>, #<Card:0x007fb0b313b7b0 @suit=:diamonds, @value=9, @num_value=9>]

# player.hand.each do |card| puts card.display end  # => [#<Card:0x007fb0b31310a8 @suit=:diamonds, @value="K", @num_value=10>, #<Card:0x007fb0b313b7b0 @suit=:diamonds, @value=9, @num_value=9>]



# while deck.length > 0 do  # => true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false
#   puts deck.draw.display  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
# end                       # => nil





