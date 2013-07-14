# simple_rack.rb

class SimpleRackApp

attr_accessor :string_to_write

def initialize(config)
	@string_to_write = config[:string_to_write]
end

def call(env) 
    [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{@string_to_write}"]]    
end

end