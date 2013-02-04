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
	def whichType
		return @type
	end

	# Change the type
	def type=(newType)
		@type = newType
	end

	# Is the animal a firefox?
	def isFirefox?
		if @type.downcase == "firefox"
			return true
		else
			return false
		end
	end
end

mycat = Animal.new("Roger", 2, "cat")
puts "#{mycat.name} is #{mycat.age}. It is a #{mycat.whichType}."
mycat.name = "Roxanne"
puts "Now my cat is named #{mycat.name}."
mycat.type = "dog"
puts "Now #{mycat.name} is a #{mycat.whichType}."
puts "Question: Is #{mycat.name} a firefox?"
puts "Answer: Yes."
puts "That's #{mycat.isFirefox?}!"
