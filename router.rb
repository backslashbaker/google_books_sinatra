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
  obj = JSON.parse(response.body)
  book = Book.new(obj['items'][0])
  erb :results, locals: { book: book }
end
