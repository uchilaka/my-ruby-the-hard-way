def abort_if_invalid(filename)
  if !File.exist?(filename)
    abort("Invalid file: #{filename}! Aborted program‍‍‍‍.")
  end
end

def preview(filename)
  abort_if_invalid filename
  # Perhaps a better way to do this so the file is closed once the block is done
  File.open filename do |f|
    puts f.read()
  end
end

filename = ARGV.first

prompt = "> "

puts "Here's your file: #{filename}"
preview filename

puts "I'll ask you to type it again:"
print prompt

file_again = STDIN.gets.chomp()
preview file_again
