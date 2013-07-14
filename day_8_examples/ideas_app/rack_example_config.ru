require '../ideas_app/rack_example'

map '/ideas' do
  run IdeaAPI.new
end