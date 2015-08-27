class Deck

  def initialize
    @cards = []                                    # => []
    suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|                           # => [:hearts, :diamonds, :spades, :clubs]
      (2..10).each do |value|                      # => 2..10, 2..10, 2..10, 2..10
        @cards << Card.new(suit, value)            # => [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>], [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>], [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>], [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @...
      end                                          # => 2..10, 2..10, 2..10, 2..10
    @cards << Card.new(suit, "J")                  # => [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007f86a10a2448 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007f86a10a1f48 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007f86a10a19a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007f86a10a12f0 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "Q")                  # => [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007f86a10a2448 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007f86a10a1f48 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007f86a10a19a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007f86a10a12f0 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "K")                  # => [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007f86a10a2448 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007f86a10a1f48 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007f86a10a19a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007f86a10a12f0 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "A")                  # => [#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007f86a10a2448 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007f86a10a1f48 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007f86a10a19a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007f86a10a12f0 @suit=:hearts, @value=8, @num_va...
    end                                            # => [:hearts, :diamonds, :spades, :clubs]
  end

  def draw
    @cards.pop  # => #<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=0>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=0>, #<Card:0x007f86a1089bc8 @suit=:diamonds, @value=8, @num_value=0>
  end

  def shuffle
    @cards.shuffle!  # => [#<Card:0x007f86a0889d10 @suit=:clubs, @value=6, @num_value=0>, #<Card:0x007f86a1081900 @suit=:diamonds, @value="J", @num_value=0>, #<Card:0x007f86a0880940 @suit=:clubs, @value=8, @num_value=0>, #<Card:0x007f86a0873240 @suit=:clubs, @value=10, @num_value=0>, #<Card:0x007f86a1069738 @suit=:spades, @value=5, @num_value=0>, #<Card:0x007f86a10a0350 @suit=:hearts, @value=10, @num_value=0>, #<Card:0x007f86a1099de8 @suit=:hearts, @value="K", @num_value=0>, #<Card:0x007f86a1...
  end

  def length
    @cards.length
  end

end

class Card

  def initialize(suit, value)
    @suit = suit               # => :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :hearts, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :diamonds, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :spades, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clubs, :clu...
    @value = value             # => 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"
    @num_value = 0             # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  end

  def get_suit
    @suit
  end

  def get_value
    @value
  end

  def get_num_value
    if @value == "J" || @value == "Q" || @value == "K"  # => false, true, false
      @num_value = 10                                   # => 10
    elsif @value == "A"                                 # => false, false
      @num_value = 11
    else
      @num_value = @value                               # => 5, 8
    end                                                 # => 5, 10, 8
  end

  def display
    "#{@value} of #{@suit}"  # => "5 of diamonds", "Q of hearts", "5 of diamonds", "Q of hearts", "8 of diamonds"
  end

end

class Player

  def initialize(card_1, card_2)
    @hand_value = card_1.get_num_value + card_2.get_num_value  # => 15
    @hand = []                                                 # => []
    @hand.push(card_1, card_2)                                 # => [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>]
  end

  def hit(card)
    @hand.push(card)                   # => [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>, #<Card:0x007f86a1089bc8 @suit=:diamonds, @value=8, @num_value=0>]
    @hand_value += card.get_num_value  # => 23
  end

  def hand
    @hand   # => [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>], [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>, #<Card:0x007f86a1089bc8 @suit=:diamonds, @value=8, @num_value=8>]
  end

end












# deck = Deck.new                            # => #<Deck:0x007f86a10a3708 @cards=[#<Card:0x007f86a10a3078 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007f86a10a2bc8 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007f86a10a2858 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007f86a10a2448 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007f86a10a1f48 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007f86a10a19a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007f86a10a12f0 @suit=:he...
# deck.shuffle                               # => [#<Card:0x007f86a0889d10 @suit=:clubs, @value=6, @num_value=0>, #<Card:0x007f86a1081900 @suit=:diamonds, @value="J", @num_value=0>, #<Card:0x007f86a0880940 @suit=:clubs, @value=8, @num_value=0>, #<Card:0x007f86a0873240 @suit=:clubs, @value=10, @num_value=0>, #<Card:0x007f86a1069738 @suit=:spades, @value=5, @num_value=0>, #<Card:0x007f86a10a0350 @suit=:hearts, @value=10, @num_value=0>, #<Card:0x007f86a1099de8 @suit=:hearts, @value="K", @num_value...
# player = Player.new(deck.draw, deck.draw)  # => #<Player:0x007f86a0840c00 @hand_value=15, @hand=[#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>]>

# player.hand.each do |card| puts card.display end  # => [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>]

# player.hit(deck.draw)  # => 23

# player.hand.each do |card| puts card.display end  # => [#<Card:0x007f86a10915f8 @suit=:diamonds, @value=5, @num_value=5>, #<Card:0x007f86a109abd0 @suit=:hearts, @value="Q", @num_value=10>, #<Card:0x007f86a1089bc8 @suit=:diamonds, @value=8, @num_value=8>]



# while deck.length > 0 do  # => true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false
#   puts deck.draw.display  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
# end                       # => nil






# >> 5 of diamonds
# >> Q of hearts
# >> 5 of diamonds
# >> Q of hearts
# >> 8 of diamonds
