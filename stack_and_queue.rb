# Abstract Type
# Data Structures

# Stack (LiFo)
# Examples of stack:
# - $PATH
# -Ruby method lookup
# - The 'stack trace' you see when an error occurs
# Stacks respond to:
# - push (add to collection)
# - pop  (remove from end of list)
# = length
my_stack = []             # => []
my_stack.push('Travis')   # => ["Travis"]
my_stack.push('Tessa')    # => ["Travis", "Tessa"]
my_stack.push('Cindy')    # => ["Travis", "Tessa", "Cindy"]
my_stack.push('Phillip')  # => ["Travis", "Tessa", "Cindy", "Phillip"]
my_stack.length           # => 4

my_stack.pop     # => "Phillip"
my_stack.pop     # => "Cindy"
my_stack.pop     # => "Tessa"
my_stack.pop     # => "Travis"
my_stack.pop     # => nil
my_stack.length  # => 0

# Queue (FiFo)
# Examples of queue:
# - waiting list for a meetup
# - email sending system
# - alert notifications
# - Drive-thru at a burger joint
# Queues respond to:
# - shift (remove first from collection)
# - push  (add to end of collection)
# - length
waitlist = []             # => []
waitlist.push("Sarah")    # => ["Sarah"]
waitlist.push("Charlie")  # => ["Sarah", "Charlie"]
waitlist.push("Anna")     # => ["Sarah", "Charlie", "Anna"]
waitlist.push("Nelson")   # => ["Sarah", "Charlie", "Anna", "Nelson"]
waitlist.length           # => 4

waitlist.shift   # => "Sarah"
waitlist.shift   # => "Charlie"
waitlist.shift   # => "Anna"
waitlist.shift   # => "Nelson"
waitlist.shift   # => nil
waitlist.length  # => 0




