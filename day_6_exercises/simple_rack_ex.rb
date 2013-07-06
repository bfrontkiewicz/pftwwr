# simple_rack_ex.rb

cmd_cpy_proc = lambda { |env| ["200" , { "Content-Type" => "text/plain"}, 
	["Command line argument you typed was: #{ARGV.first}" ] ] }

puts cmd_cpy_proc.call({})