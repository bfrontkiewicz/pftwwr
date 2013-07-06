# nokogiri_demo.rb
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://rubylearning.com/"))

# search with XPath
puts doc.xpath("//h2[@id='slogan']").first.content

# search with CSS3
puts doc.css("#footer p strong:first-child")[0].content