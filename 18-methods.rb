#!/usr/bin/env ruby
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# apparently, *args is pointnless, and we can just do the following:
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def puts_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_done()
  puts "I got nothin."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("First!")
puts_none()
