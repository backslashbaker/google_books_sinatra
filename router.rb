require 'sinatra'
require 'httparty'
require 'json'
require "awesome_print"


get '/' do
	erb :index
end

get '/search-books' do
	response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=#{params['search-term']}")
	obj = JSON.parse(response.body)
	first_item = obj["items"][0]
	erb :results, locals: {first_item: first_item}

end