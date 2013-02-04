#!/usr/bin/env ruby

# encode: UTF-8

class Animal
  # Attributes
  attr_accessor :name, :age

  # Constructor
  def initialize(name, age, type)
    @name, @age, @type = name, age, type
    puts "You've created an animal called #{@name}!"
  end

  # Return the type
  def which_type
    return @type
  end

  # Change the type
  def type=(new_type)
    @type = new_type
  end

  # Is the animal a firefox?
  def firefox?
    if @type.downcase == "firefox"
      return true
    else
      return false
    end
  end
end

mycat = Animal.new("Roger", 2, "cat")
puts "#{mycat.name} is #{mycat.age}. It is a #{mycat.which_type}."
mycat.name = "Roxanne"
puts "Now my cat is named #{mycat.name}."
mycat.type = "dog"
puts "Now #{mycat.name} is a #{mycat.which_type}."
puts "Question: Is #{mycat.name} a firefox?"
puts "Answer: Yes."
puts "That's #{mycat.firefox?}!"
puts "What's #{mycat.name} now?"
newthingie = gets.chomp
mycat.type = newthingie
puts "Now #{mycat.name} is a #{mycat.which_type}! Do you want a new name for it? (y/n)"
yn = gets.chomp
if yn == "y"
  puts "New name:"
  nn = gets.chomp
  mycat.name = nn
  puts "Now your #{mycat.which_type} is a #{mycat.name}!"
end
puts "Is #{mycat.name} a firefox? #{mycat.firefox?}."