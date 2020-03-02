first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# Extra credit
puts
print "Now that we've worked with your arguments, lets get to know each other. What's your name? "
# when gets is used here, we had to specify that it was on STDIN... why is that?
# perhaps it has something to do with the use of ARG and gets?
user_name = STDIN.gets.chomp()
puts "It's nice to meet you, #{user_name}"
