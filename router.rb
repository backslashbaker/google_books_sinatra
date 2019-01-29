require 'sinatra'
require 'httparty'
require 'json'
require 'awesome_print'

require_relative 'lib/book'

get '/' do
  erb :index
end

get '/search-books' do
  url = "https://www.googleapis.com/books/v1/volumes?q=#{params['search-term']}"
  response = HTTParty.get(url)
	result = JSON.parse(response.body)
	raw_books = result['items']
	books = raw_books.map do |raw_book|
		Book.new(raw_book)
	end
  erb :results, locals: { books: books }
end
