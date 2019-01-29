require 'sinatra'
require 'httparty'


get '/' do
	# response = HTTParty.get('https://www.googleapis.com/books/v1/volumes?q=harry+potter')
	erb :index
end

get '/search-books' do

end