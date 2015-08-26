class Person

  def initialize(name)
    @name = name        # => "bill", "tessa", "ryan", "travis", "josh", "ashley"
  end

  def get_name
    @name.capitalize  # => "Bill", "Ryan", "Travis", "Josh", "Ashley"
  end

  def set_name(new_name)
    @name = new_name      # => "bob"
  end

end

person1 = Person.new("bill")   # => #<Person:0x007fd4da8a82c8 @name="bill">
person2 = Person.new("tessa")  # => #<Person:0x007fd4da8ab018 @name="tessa">

person1.get_name         # => "Bill"
person1.set_name("bob")  # => "bob"

student_records = Array.new                 # => []
student_records.push(Person.new('ryan'))    # => [#<Person:0x007fd4da8a3868 @name="ryan">]
student_records.push(Person.new('travis'))  # => [#<Person:0x007fd4da8a3868 @name="ryan">, #<Person:0x007fd4da8a3660 @name="travis">]
student_records.push(Person.new('josh'))    # => [#<Person:0x007fd4da8a3868 @name="ryan">, #<Person:0x007fd4da8a3660 @name="travis">, #<Person:0x007fd4da8a3408 @name="josh">]
student_records.push(Person.new('ashley'))  # => [#<Person:0x007fd4da8a3868 @name="ryan">, #<Person:0x007fd4da8a3660 @name="travis">, #<Person:0x007fd4da8a3408 @name="josh">, #<Person:0x007fd4da8a30e8 @name="ashley">]

student_records.each do |student|  # => [#<Person:0x007fd4da8a3868 @name="ryan">, #<Person:0x007fd4da8a3660 @name="travis">, #<Person:0x007fd4da8a3408 @name="josh">, #<Person:0x007fd4da8a30e8 @name="ashley">]
  puts student.get_name            # => nil, nil, nil, nil
end                                # => [#<Person:0x007fd4da8a3868 @name="ryan">, #<Person:0x007fd4da8a3660 @name="travis">, #<Person:0x007fd4da8a3408 @name="josh">, #<Person:0x007fd4da8a30e8 @name="ashley">]

# >> Ryan
# >> Travis
# >> Josh
# >> Ashley
