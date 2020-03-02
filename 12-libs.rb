require 'open-uri'

open('http://www.ruby-lang.org/en') do |f|
  f.each_line { |line| p line }
  puts f.base_uri
  puts f.content_type
  puts f.charset # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/> # "text/html" # "iso-8859-1"
  puts f.content_encoding # [] (was blank in my exercise)
  puts f.last_modified # Thu Dec 05 02:45:02 UTC 2002 (was blank in my exercise)
end
