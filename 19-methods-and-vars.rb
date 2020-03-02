#!/usr/bin/env ruby
def cheese_and_crackers(cheese_count: 0, boxes_of_crackers: 0)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."; puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers cheese_count: 20, boxes_of_crackers: 30

puts "OR, we can use variables from our script:"
options = { cheese_count: 10, boxes_of_crackers: 50 }; 

cheese_and_crackers **options # spreading a hash into method options

puts "We can even do math inside too:"
cheese_and_crackers cheese_count: 10 + 20, boxes_of_crackers: 5 + 6

puts "And we can combine the two, variables and math:"
options[:cheese_count] += 100; options[:boxes_of_crackers] += 1000
cheese_and_crackers **options
