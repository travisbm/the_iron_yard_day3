class Deck

  def initialize
    @cards = []                                    # => []
    suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|                           # => [:hearts, :diamonds, :spades, :clubs]
      (2..10).each do |value|                      # => 2..10, 2..10, 2..10, 2..10
        @cards << Card.new(suit, value)            # => [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>], [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>], [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>], [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @...
      end                                          # => 2..10, 2..10, 2..10, 2..10
    @cards << Card.new(suit, "J")                  # => [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39093c98 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007feb390937e8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007feb390931a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007feb39092b90 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "Q")                  # => [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39093c98 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007feb390937e8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007feb390931a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007feb39092b90 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "K")                  # => [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39093c98 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007feb390937e8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007feb390931a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007feb39092b90 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "A")                  # => [#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39093c98 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007feb390937e8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007feb390931a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007feb39092b90 @suit=:hearts, @value=8, @num_va...
    end                                            # => [:hearts, :diamonds, :spades, :clubs]
  end

  def draw
    @cards.pop  # => #<Card:0x007feb38882090 @suit=:clubs, @value=5, @num_value=0>, #<Card:0x007feb3906bb30 @suit=:diamonds, @value="K", @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb38860030 @suit=:clubs, @value="J", @num_value=0>
  end

  def shuffle
    @cards.shuffle!  # => [#<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39080648 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007feb39089810 @suit=:diamonds, @value=2, @num_value=0>, #<Card:0x007feb39081728 @suit=:diamonds, @value=6, @num_value=0>, #<Card:0x007feb39031548 @suit=:spades, @value="K", @num_value=0>, #<Card:0x007feb390439a0 @suit=:spades, @value=8, @num_value=0>, #<Card:0x007feb388684b0 @suit=:clubs, @value=10, @num_value=0>, #<Card:0x007fe...
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
    if @value == "J" || @value == "Q" || @value == "K"  # => false, true, false, true
      @num_value = 10                                   # => 10, 10
    elsif @value == "A"                                 # => false, false
      @num_value = 11
    else
      @num_value = @value                               # => 5, 3
    end                                                 # => 5, 10, 3, 10
  end

  def display
    "#{@value} of #{@suit}"  # => "3 of hearts", "5 of clubs", "K of diamonds"
  end

end

class Player

  def initialize(card_1, card_2)
    @hand_value = card_1.get_num_value + card_2.get_num_value  # => 15, 13
    @hand = []                                                 # => [], []
    @hand.push(card_1, card_2)                                 # => [#<Card:0x007feb38882090 @suit=:clubs, @value=5, @num_value=5>, #<Card:0x007feb3906bb30 @suit=:diamonds, @value="K", @num_value=10>], [#<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=3>, #<Card:0x007feb38860030 @suit=:clubs, @value="J", @num_value=10>]
  end

  def hit(card)
    @hand.push(card)
    @hand_value += card.get_num_value
  end

  def hand
    @hand   # => [#<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=3>, #<Card:0x007feb38860030 @suit=:clubs, @value="J", @num_value=10>], [#<Card:0x007feb38882090 @suit=:clubs, @value=5, @num_value=5>, #<Card:0x007feb3906bb30 @suit=:diamonds, @value="K", @num_value=10>]
  end

  def hand_value
    @hand_value   # => 15
  end

  def print_hand
    hand.each{|card| puts card.display}  # => [#<Card:0x007feb38882090 @suit=:clubs, @value=5, @num_value=5>, #<Card:0x007feb3906bb30 @suit=:diamonds, @value="K", @num_value=10>]
  end

  def print_dealer_hand
    hand[0].display      # => "3 of hearts"
  end

end

# Game main
deck = Deck.new  # => #<Deck:0x007feb390990a8 @cards=[#<Card:0x007feb39098950 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39093c98 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007feb390937e8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007feb390931a8 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007feb39092b90 @suit=:hearts, @value=8, @num_value...
deck.shuffle     # => [#<Card:0x007feb39098108 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007feb39080648 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007feb39089810 @suit=:diamonds, @value=2, @num_value=0>, #<Card:0x007feb39081728 @suit=:diamonds, @value=6, @num_value=0>, #<Card:0x007feb39031548 @suit=:spades, @value="K", @num_value=0>, #<Card:0x007feb390439a0 @suit=:spades, @value=8, @num_value=0>, #<Card:0x007feb388684b0 @suit=:clubs, @value=10, @num_value=0>, #<Card:0x007feb390...

player = Player.new(deck.draw, deck.draw)  # => #<Player:0x007feb38829968 @hand_value=15, @hand=[#<Card:0x007feb38882090 @suit=:clubs, @value=5, @num_value=5>, #<Card:0x007feb3906bb30 @suit=:diamonds, @value="K", @num_value=10>]>
dealer = Player.new(deck.draw, deck.draw)  # => #<Player:0x007feb38828838 @hand_value=13, @hand=[#<Card:0x007feb39098478 @suit=:hearts, @value=3, @num_value=3>, #<Card:0x007feb38860030 @suit=:clubs, @value="J", @num_value=10>]>

puts "Dealer is showing > "    # => nil
puts dealer.print_dealer_hand  # => nil

puts  # => nil

puts "Your hand is: "   # => nil
puts player.print_hand  # => nil

if player.hand_value == 21   # => false
  puts "Blackjack! You win"
end                          # => nil

print "Would you like to hit (Y)es or (N)o > "      # => nil
answer = gets.chomp                                 # ~> NoMethodError: undefined method `chomp' for nil:NilClass
if answer.upcase == "Y"
  player.hit(deck.draw)
  puts "Your hand is: "
  puts player.print_hand
  while player.hand_value < 21 do
    print "Would you like to hit (Y)es or (N)o > "
    reply = gets.chomp
      if reply.upcase == "Y"
        player.hit(deck.draw)
        puts "Your hand is: "
        puts player.print_hand
      end
  end
end

if player.hand_value > 21
  puts "Sorry, you bust!"
end

puts "Dealer hand is: "
puts dealer.print_hand

if dealer.hand_value >= 16 && dealer.hand_value < player.hand_value
  puts "You win!"
elsif dealer.hand_value < 16
  while dealer.hand_value < 16 do
  dealer.hit(deck.draw)
  end
    if dealer.hand_value >= 16 && dealer.hand_value < player.hand_value
    puts "You win!"
    elsif dealer.hand_value > 21
    puts "Dealer bust, you win!"
    else
    puts "Sorry, you lose."
    end
else
  puts "Sorry, you lose."
end

puts "Dealer hand is: "
puts dealer.print_hand

puts "Your hand is: "
puts player.print_hand

# >> Dealer is showing >
# >> 3 of hearts
# >>
# >> Your hand is:
# >> 5 of clubs
# >> K of diamonds
# >> #<Card:0x007feb38882090>
# >> #<Card:0x007feb3906bb30>
# >> Would you like to hit (Y)es or (N)o >

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/Britton/theironyard/week1/day3/game.rb:114:in `<main>'
