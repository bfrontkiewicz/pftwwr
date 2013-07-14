# my_rack_proc_as_method.rb

require 'rack'

def my_method env
	[200, { "Content-Type" => "text/plain" }, ["method called"]]
end

Rack::Handler::WEBrick.run method(:my_method), :Port => 9876