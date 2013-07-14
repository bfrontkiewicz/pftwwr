require './simple_rack'

text_argument_to_write = "Hello world!"
c = {:string_to_write => text_argument_to_write}

run SimpleRackApp.new c