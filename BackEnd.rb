require 'sinatra'
require 'json'

get '/hi' do
  "Hello world, it's #{Time.now} at the server!"
end

get '/dialog' do
  age = request.params['age']
  "I'm #{age} years old"
end

get '/json' do
	content_type :json
	guy = { name: "Eugen", age: "10"}
	guy.to_json
end

post '/bye' do
	"Bye"
	# a = JSON.parse(request.env).to_json
	a = JSON.parse(request.env["rack.input"].read)
	puts a
end