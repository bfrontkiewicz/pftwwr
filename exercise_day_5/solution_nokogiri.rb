# solution_nokogiri.rb
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))
found_times = 0
arr = []

# search with XPath
doc.xpath("/html//text()").each { |node|
	    arr << node.text    
}

arr.each { |node_text|
	node_text.scan(/\s[tT][hH][eE]\s/) { |node|
	      found_times += 1  
    }
}

puts found_times