cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
# The count of cars left @ home by their drivers
cars_not_driven = cars - drivers
# the count of cars available to carpool
cars_driven = drivers
=begin
this is VERY simplistic, considering that each car may 
have a different space_in_a_car
we can improve this program by turning each car object 
into a hash of { :capacity }. this hash can hold more data 
in the future e.g. :driver_name, :tank_capacity_gallon, :miles_per_gallon
=end
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

