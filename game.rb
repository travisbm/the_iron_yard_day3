class Deck

  def initialize
    @cards = []                                    # => []
    suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|                           # => [:hearts, :diamonds, :spades, :clubs]
      (2..10).each do |value|                      # => 2..10, 2..10, 2..10, 2..10
        @cards << Card.new(suit, value)            # => [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>], [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>], [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>], [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @...
      end                                          # => 2..10, 2..10, 2..10, 2..10
    @cards << Card.new(suit, "J")                  # => [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fe86387f868 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fe86387f340 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fe86387edc8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fe86387e710 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "Q")                  # => [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fe86387f868 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fe86387f340 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fe86387edc8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fe86387e710 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "K")                  # => [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fe86387f868 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fe86387f340 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fe86387edc8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fe86387e710 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "A")                  # => [#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fe86387f868 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fe86387f340 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fe86387edc8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fe86387e710 @suit=:hearts, @value=8, @num_va...
    end                                            # => [:hearts, :diamonds, :spades, :clubs]
  end

  def draw
    @cards.pop  # => #<Card:0x007fe863876538 @suit=:hearts, @value="A", @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe8638775a0 @suit=:hearts, @value="K", @num_value=0>, #<Card:0x007fe862063e00 @suit=:clubs, @value=10, @num_value=0>
  end

  def shuffle
    @cards.shuffle!  # => [#<Card:0x007fe86386d3c0 @suit=:diamonds, @value=6, @num_value=0>, #<Card:0x007fe863864ce8 @suit=:diamonds, @value=9, @num_value=0>, #<Card:0x007fe86386f288 @suit=:diamonds, @value=4, @num_value=0>, #<Card:0x007fe86387cdc0 @suit=:hearts, @value="J", @num_value=0>, #<Card:0x007fe86386e3d8 @suit=:diamonds, @value=5, @num_value=0>, #<Card:0x007fe86386c330 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007fe86385f4f0 @suit=:diamonds, @value=10, @num_value=0>, #<Card:...
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
    if @value == "J" || @value == "Q" || @value == "K"  # => false, false, true, false
      @num_value = 10                                   # => 10
    elsif @value == "A"                                 # => true, false, false
      @num_value = 11                                   # => 11
    else
      @num_value = @value                               # => 3, 10
    end                                                 # => 11, 3, 10, 10
  end

  def display
    "#{@value} of #{@suit}"  # => "K of hearts", "A of hearts", "3 of hearts"
  end

end

class Player

  def initialize(card_1, card_2)
    @hand_value = card_1.get_num_value + card_2.get_num_value  # => 14, 20
    @hand = []                                                 # => [], []
    @hand.push(card_1, card_2)                                 # => [#<Card:0x007fe863876538 @suit=:hearts, @value="A", @num_value=11>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=3>], [#<Card:0x007fe8638775a0 @suit=:hearts, @value="K", @num_value=10>, #<Card:0x007fe862063e00 @suit=:clubs, @value=10, @num_value=10>]
  end

  def hit(card)
    @hand.push(card)
    @hand_value += card.get_num_value
  end

  def hand
    @hand   # => [#<Card:0x007fe8638775a0 @suit=:hearts, @value="K", @num_value=10>, #<Card:0x007fe862063e00 @suit=:clubs, @value=10, @num_value=10>], [#<Card:0x007fe863876538 @suit=:hearts, @value="A", @num_value=11>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=3>]
  end

  def hand_value
    @hand_value   # => 14, 14
  end

  def print_hand
    hand.each{|card| puts card.display}  # => [#<Card:0x007fe863876538 @suit=:hearts, @value="A", @num_value=11>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=3>]
  end

  def print_dealer_hand
    hand[0].display      # => "K of hearts"
  end

end

# Game main
deck = Deck.new  # => #<Deck:0x007fe863884a20 @cards=[#<Card:0x007fe8638843b8 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007fe86387fc28 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007fe86387f868 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007fe86387f340 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007fe86387edc8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007fe86387e710 @suit=:hearts, @value=8, @num_value...
deck.shuffle     # => [#<Card:0x007fe86386d3c0 @suit=:diamonds, @value=6, @num_value=0>, #<Card:0x007fe863864ce8 @suit=:diamonds, @value=9, @num_value=0>, #<Card:0x007fe86386f288 @suit=:diamonds, @value=4, @num_value=0>, #<Card:0x007fe86387cdc0 @suit=:hearts, @value="J", @num_value=0>, #<Card:0x007fe86386e3d8 @suit=:diamonds, @value=5, @num_value=0>, #<Card:0x007fe86386c330 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007fe86385f4f0 @suit=:diamonds, @value=10, @num_value=0>, #<Card:0x00...

player = Player.new(deck.draw, deck.draw)  # => #<Player:0x007fe862029200 @hand_value=14, @hand=[#<Card:0x007fe863876538 @suit=:hearts, @value="A", @num_value=11>, #<Card:0x007fe86387ff20 @suit=:hearts, @value=3, @num_value=3>]>
dealer = Player.new(deck.draw, deck.draw)  # => #<Player:0x007fe862028030 @hand_value=20, @hand=[#<Card:0x007fe8638775a0 @suit=:hearts, @value="K", @num_value=10>, #<Card:0x007fe862063e00 @suit=:clubs, @value=10, @num_value=10>]>

puts "Dealer is showing > "    # => nil
puts dealer.print_dealer_hand  # => nil

puts  # => nil

puts "Your hand is: "   # => nil
puts player.print_hand  # => nil

if player.hand_value == 21                        # => false
  puts "Blackjack! You win"
elsif player.hand_value < 21                      # => true
  print "Would you like to hit (Y)es or (N)o > "  # => nil
  answer = gets.chomp                             # ~> NoMethodError: undefined method `chomp' for nil:NilClass
  if answer.upcase == "Y"
    player.hit(deck.draw)
  end
end

# >> Dealer is showing >
# >> K of hearts
# >>
# >> Your hand is:
# >> A of hearts
# >> 3 of hearts
# >> #<Card:0x007fe863876538>
# >> #<Card:0x007fe86387ff20>
# >> Would you like to hit (Y)es or (N)o >

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/Britton/theironyard/week1/day3/game.rb:113:in `<main>'
