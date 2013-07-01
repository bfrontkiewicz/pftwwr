# solution_nethttp.rb
require 'net/http'

uri = URI('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
res = Net::HTTP.get_response(uri)

text = Net::HTTP.get(uri)
found_times = 0

text.scan(/[tT][hH][eE]/) { |match| 
	found_times += 1  
}

puts found_times