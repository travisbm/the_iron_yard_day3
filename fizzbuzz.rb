print "What number would you like to count to > "
int = gets.chomp

for i in 1..int.to_i
  if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end
