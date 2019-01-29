require 'sinatra'
require 'httparty'
require 'json'


get '/' do
	erb :index
end

get '/search-books' do
	response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=#{params['search-term']}")
	obj = JSON.parse(response.body)
	erb :results, locals: {response: obj}
end