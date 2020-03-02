#!/usr/bin/env ruby
filename = ARGV.first; abort("Invalid filename") if !filename
script = $0
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."; buffer = []

(1..3).each do |num| 
    print "line #{num}: "; buffer.append(STDIN.gets.chomp())
end; puts buffer

puts "I'm going to write these to the file."

buffer.each do |line|
    target.write(line, "\n")
end




puts "And finally, we close it."
target.close