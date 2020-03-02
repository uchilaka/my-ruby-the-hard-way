#!/usr/bin/env ruby
from_file, to_file = ARGV
script = $0
puts "Copying from #{from_file} to #{to_file}"

indata = nil; 
File.open(from_file) do |file| 
  indata = file.read()
end; puts "The input file is #{indata.length} bytes long"


puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

File.open(to_file, 'w') { |output| output.write(indata) }


puts "Alright, all done."
