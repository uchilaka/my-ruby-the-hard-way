#!/usr/bin/env ruby

=begin
Accepts multiple inputs either via the CLI prompt (ARGV) or
using gets.chomp() and once the user is done, prints out all 
the inputs
=end

def puts_all(*args)
  args.each.with_index do |arg, at|
    print "\s" if at > 0
    print "arg#{at}: #{arg};"
  end
end

content = []; PROMPT="> "
if ARGV.size > 0 
  content = ARGV
else
  puts "Provide your arguments, separarted by spaces:"
  print PROMPT
  input = gets.chomp()
  until input.empty?
    content << input
    puts "Added input: #{input}"; puts "Got more? (If no, just hit enter)"; print PROMPT
    input = gets.chomp()
  end
end

puts_all(*content)
puts