user, email = ARGV
prompt='> '

puts "Hi #{user}, I'm the #{0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE

# Extra credit
if !!email
  puts
  puts <<MESSAGE
So... can I send you an email @ #{email}?
MESSAGE

  print prompt
  response = STDIN.gets.chomp()

  if response.match(/y(es)?|sure|ok|of course/i)
    puts "Awesome! Thanks #{user}, I'll be in touch 👍🏾"
  else
    puts "Cool, thanks for chatting, #{user}."
  end
end
