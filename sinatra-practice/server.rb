require 'sinatra'
require 'csv'
require 'pry'

get '/' do
  redirect '/grocery-list'
end

get '/grocery-list' do
  @groceries = CSV.readlines('grocery_list.csv', headers: true)
  erb :index
end

post '/grocery-list' do
  grocery = params['name']
  quantity = params['quantity']

  CSV.open('grocery_list.csv', 'a') do |csv|
    csv << [grocery, quantity] unless grocery == ""
  end

  redirect '/grocery-list'
end
