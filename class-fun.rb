class Student

  name  # => "Student"

  def sleep
    puts "Goes to bed"
  end

  def study
    puts "studies"
  end

  def gets_name(str)
    name = str        # => "Travis"
  end

  def puts_name
    puts @name   # => nil
  end

end

travis = Student.new        # => #<Student:0x007f8edc8b1f60>
travis.gets_name("Travis")  # => "Travis"
travis.puts_name            # => nil

# >>
