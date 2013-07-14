# simple_rack_proc_with_rack_gem.rb

require 'rack'

proc_copy_prompt_argument = lambda { |env| 
	[
		"200" , 
		{ "Content-Type" => "text/plain"}, 
    	["Command line argument you typed was: #{ARGV.first}" ] 
    ] 
}

Rack::Handler::WEBrick.run proc_copy_prompt_argument, :Port => 8500