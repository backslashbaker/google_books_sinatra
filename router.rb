require 'sinatra'
require_relative 'name_modifier'

get '/' do
  'Hello world!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
	# params['name'] is 'foo' or 'bar'
	NameModifier.upcase_name(params['name'])
end