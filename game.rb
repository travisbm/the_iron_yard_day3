class Deck

  def initialize
    @cards = []                                    # => []
    suits = [:hearts, :diamonds, :spades, :clubs]  # => [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|                           # => [:hearts, :diamonds, :spades, :clubs]
      (2..10).each do |value|                      # => 2..10, 2..10, 2..10, 2..10
        @cards << Card.new(suit, value)            # => [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>], [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>], [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>], [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @...
      end                                          # => 2..10, 2..10, 2..10, 2..10
    @cards << Card.new(suit, "J")                  # => [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b8716a0 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b86bf70 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "Q")                  # => [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b8716a0 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b86bf70 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "K")                  # => [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b8716a0 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b86bf70 @suit=:hearts, @value=8, @num_va...
    @cards << Card.new(suit, "A")                  # => [#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b8716a0 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b86bf70 @suit=:hearts, @value=8, @num_va...
    end                                            # => [:hearts, :diamonds, :spades, :clubs]
  end

  def draw
    @cards.pop  # => #<Card:0x007ff00a892fe0 @suit=:spades, @value="Q", @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b83aad8 @suit=:spades, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>
  end

  def shuffle
    @cards.shuffle!  # => [#<Card:0x007ff00b81bb10 @suit=:spades, @value=9, @num_value=0>, #<Card:0x007ff00b84bf90 @suit=:diamonds, @value="J", @num_value=0>, #<Card:0x007ff00b862e98 @suit=:diamonds, @value=2, @num_value=0>, #<Card:0x007ff00b859578 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b848160 @suit=:diamonds, @value="K", @num_value=0>, #<Card:0x0...
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
    if @value == "J" || @value == "Q" || @value == "K"  # => true, false, false, false
      @num_value = 10                                   # => 10
    elsif @value == "A"                                 # => false, false, false
      @num_value = 11
    else
      @num_value = @value                               # => 6, 2, 3
    end                                                 # => 10, 6, 2, 3
  end

  def display
    "#{@value} of #{@suit}"  # => "2 of spades", "Q of spades", "6 of hearts"
  end

end

class Player

  def initialize(card_1, card_2)
    @hand_value = card_1.get_num_value + card_2.get_num_value  # => 16, 5
    @hand = []                                                 # => [], []
    @hand.push(card_1, card_2)                                 # => [#<Card:0x007ff00a892fe0 @suit=:spades, @value="Q", @num_value=10>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=6>], [#<Card:0x007ff00b83aad8 @suit=:spades, @value=2, @num_value=2>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=3>]
  end

  def hit(card)
    @hand.push(card)
    @hand_value += card.get_num_value
  end

  def hand
    @hand   # => [#<Card:0x007ff00b83aad8 @suit=:spades, @value=2, @num_value=2>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=3>], [#<Card:0x007ff00a892fe0 @suit=:spades, @value="Q", @num_value=10>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=6>]
  end

  def hand_value
    @hand_value   # => 16
  end

  def print_hand
    hand.each{|card| puts card.display}  # => [#<Card:0x007ff00a892fe0 @suit=:spades, @value="Q", @num_value=10>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=6>]
  end

  def print_dealer_hand
    hand[0].display      # => "2 of spades"
  end

end

# Game main
deck = Deck.new  # => #<Deck:0x007ff00b872e60 @cards=[#<Card:0x007ff00b872618 @suit=:hearts, @value=2, @num_value=0>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b8716a0 @suit=:hearts, @value=5, @num_value=0>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b86bf70 @suit=:hearts, @value=8, @num_value...
deck.shuffle     # => [#<Card:0x007ff00b81bb10 @suit=:spades, @value=9, @num_value=0>, #<Card:0x007ff00b84bf90 @suit=:diamonds, @value="J", @num_value=0>, #<Card:0x007ff00b862e98 @suit=:diamonds, @value=2, @num_value=0>, #<Card:0x007ff00b859578 @suit=:diamonds, @value=7, @num_value=0>, #<Card:0x007ff00b870818 @suit=:hearts, @value=7, @num_value=0>, #<Card:0x007ff00b871bc8 @suit=:hearts, @value=4, @num_value=0>, #<Card:0x007ff00b848160 @suit=:diamonds, @value="K", @num_value=0>, #<Card:0x007ff...

player = Player.new(deck.draw, deck.draw)  # => #<Player:0x007ff00a819960 @hand_value=16, @hand=[#<Card:0x007ff00a892fe0 @suit=:spades, @value="Q", @num_value=10>, #<Card:0x007ff00b870fe8 @suit=:hearts, @value=6, @num_value=6>]>
dealer = Player.new(deck.draw, deck.draw)  # => #<Player:0x007ff00a818628 @hand_value=5, @hand=[#<Card:0x007ff00b83aad8 @suit=:spades, @value=2, @num_value=2>, #<Card:0x007ff00b871fb0 @suit=:hearts, @value=3, @num_value=3>]>

puts "Dealer is showing > "    # => nil
puts dealer.print_dealer_hand  # => nil

puts  # => nil

puts "Your hand is: "   # => nil
puts player.print_hand  # => nil

if player.hand_value == 21                        # => false
  puts "Blackjack! You win"
  puts "Dealer hand is: "
  puts dealer.print_hand
  puts "Your hand is: "
  puts player.print_hand
else
  print "Would you like to hit (Y)es or (N)o > "  # => nil
  answer = gets.chomp                             # ~> NoMethodError: undefined method `chomp' for nil:NilClass
  if answer.upcase == "Y"
    player.hit(deck.draw)
    puts "Your hand is: "
    puts player.print_hand\

    reply = ""
    while player.hand_value < 21 && reply.upcase != "N" do
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
    puts "Dealer hand is: "
    puts dealer.print_hand
    puts "Your hand is: "
    puts player.print_hand
  end

  puts "Dealer hand is: "
  puts dealer.print_hand
  if player.hand_value < 21
    if dealer.hand_value >= 16 && dealer.hand_value < player.hand_value
      puts "You win!"
      puts "Dealer hand is: "
      puts dealer.print_hand
      puts "Your hand is: "
      puts player.print_hand
    elsif dealer.hand_value >= 16 && dealer.hand_value == player.hand_value
      puts "Draw! Push"
      puts "Dealer hand is: "
      puts dealer.print_hand
      puts "Your hand is: "
      puts player.print_hand
    elsif dealer.hand_value < 16
      while dealer.hand_value < 16 do
      dealer.hit(deck.draw)
      end
        if dealer.hand_value >= 16 && dealer.hand_value < player.hand_value
        puts "You win!"
        puts "Dealer hand is: "
        puts dealer.print_hand
        puts "Your hand is: "
        puts player.print_hand
        elsif dealer.hand_value > 21
        puts "Dealer bust, you win!"
        puts "Dealer hand is: "
        puts dealer.print_hand
        puts "Your hand is: "
        puts player.print_hand
        else
        puts "Sorry, you lose."
        puts "Dealer hand is: "
        puts dealer.print_hand
        puts "Your hand is: "
        puts player.print_hand
        end
    else
      puts "Sorry, you lose."
      puts "Dealer hand is: "
      puts dealer.print_hand
      puts "Your hand is: "
      puts player.print_hand
    end
  elsif player.hand_value == 21 && dealer.hand_value < 21
    puts "You win!"
    puts "Dealer hand is: "
    puts dealer.print_hand
    puts "Your hand is: "
    puts player.print_hand
  elsif player.hand_value == dealer.hand_value
    puts "Draw! Push"
    puts "Dealer hand is: "
    puts dealer.print_hand
    puts "Your hand is: "
    puts player.print_hand
  end
end
# puts "Dealer hand is: "
# puts dealer.print_hand
# puts "Your hand is: "
# puts player.print_hand

# >> Dealer is showing >
# >> 2 of spades
# >>
# >> Your hand is:
# >> Q of spades
# >> 6 of hearts
# >> #<Card:0x007ff00a892fe0>
# >> #<Card:0x007ff00b870fe8>
# >> Would you like to hit (Y)es or (N)o >

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/Britton/theironyard/week1/day3/game.rb:117:in `<main>'
