#!/usr/bin/env ruby
def add(*nums); puts "ADDING #{nums.join(", ")}"
  total=0; nums.each { |num| total += num } 
  total
end

def subtract(a, b); puts "SUBTRACTING #{a} #{b}"
  a - b
end

def multiply(*nums); puts "MULTIPLYING #{nums.join(", ")}"
  product = 1; nums.each { |num| product *= num }
  product
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"