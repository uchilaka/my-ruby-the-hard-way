# Interpolating a numeric value (into a string)
x = "There are #{10} types of people."
# assignment
binary = "binary"
# assignment
do_not = "don't"
# string interpolation of declared variables to make the statement about kinds of people
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
# interpolation of a boolean value
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# Using the concatenation operator. Ruby is smart enough to figure out that
# that it means concatenation in this case because all the variables it
# operates on are strings
puts w + e

