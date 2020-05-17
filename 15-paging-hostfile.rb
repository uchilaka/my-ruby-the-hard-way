#!/usr/bin/env ruby
hostfile = File.join('/mnt', 'c', 'Windows', 'System32', 'drivers', 'etc', 'hosts')
puts "#### Hostfile: #{hostfile}"
puts 

# File.open(hostfile) do |f|
#   puts f.read()
# end

# until input == q do 
#   input = STDIN.gets.chomp()
#   puts <<~PROMPT
#     Enter "q" to exit, 🡻 or 🡹 to continue:
#   PROMPT
# end

def exit_and_close f
  f.close if f && f.respond_to?(:close)
  exit 1
end

buffer_count = 0
line_at = 0
buffer_len = 15
stream = File.open(hostfile)

prompt = <<~PROMPT
  Enter to continue, or return "q" to exit (#{stream.lineno}):
PROMPT

stream.readlines.each do |line|
  line_at = stream.lineno

  puts line

  if buffer_count >= buffer_len
    2.times { puts }
    puts prompt
    input = STDIN.gets.chomp()
    exit_and_close(stream) if input == "q"
    case input
    when "w"
      stream.lineno = line_at - buffer_len
    else
      stream.lineno = line_at + buffer_len
    end
    buffer_count = 0
  else
    buffer_count += 1
  end
end
