class ReverseStringApp
  def call(env)
    req = Rack::Request.new(env)

    reversed_str = req.params['input_string']

    if reversed_str.nil?
      [400, {'Content-Type' => 'text/plain'}, ['You have to provide a parameter named input_string!']]
    else
      [200, {'Content-Type' => 'text/plain'}, ["Reversed string: #{reversed_str.reverse}"]]
    end

  end
end