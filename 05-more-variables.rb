name = 'Uchenna Chilaka'
age = 33 # not a lie
height = 74 # inches
weight = 208.2 # lbs
eyes = 'Brown'
teeth = 'White'
hair = 'Black'
FACTOR_LBS_TO_KG = 0.454
FACTOR_IN_TO_CM = 2.54

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

puts "His height in centimeters is %.3f" % (FACTOR_IN_TO_CM * height)
puts "His weight in kilos is %.3f" % (FACTOR_LBS_TO_KG * weight)

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]

