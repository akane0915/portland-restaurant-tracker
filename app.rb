require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/restaurant'
require './lib/location'
require './lib/cuisine'
require 'pry'
also_reload('lib/**/*.rb')

get '/' do
  @cuisines = Cuisine.all
  @locations = Location.all
  erb :index
end

post '/cuisines' do
  type = params.fetch('type')
  new_cuisine = Cuisine.create({:type => type, :id => nil})
  @cuisines = Cuisine.all
  erb :index
end

get '/cuisines/:id' do
  @id = params.fetch('id').to_i
  @cuisine = Cuisine.find(@id)
  erb :cuisine
end

post '/restaurants' do
  name = params.fetch('name')
  price = params.fetch('price').to_i
  cuisine_id = params.fetch('cuisine_id').to_i
  location_id = params.fetch('location_id').to_i
  new_restaurant = Restaurant.create({:name => name, :price => price, :cuisine_id => cuisine_id, :location_id => location_id, :id => nil})
  @restaurant = Restaurant.find(cuisine_id)
  erb :restaurant
end

get '/cuisines/:id/edit' do
  id = params.fetch('id').to_i
  @cuisine = Cuisine.find(id)
  erb :cuisine_edit
end

patch '/cuisines/:id' do
  type = params.fetch('type')
  id = params.fetch('id').to_i
  @cuisine = Cuisine.find(id)
  @cuisine.update({:type => type})
  erb :cuisine
end

delete'/cuisines/:id' do
  id = params.fetch('id').to_i
  @cuisine = Cuisine.find(id)
  @cuisine.delete
  @cuisines = Cuisine.all
  erb :index
end

get '/restaurants/:id/edit' do
  id = params.fetch('id').to_i
  @restaurant = Restaurant.find(id)
  erb :restaurant_edit
end

patch '/restaurants/:id' do
  name = params.fetch('name')
  price = params.fetch('price').to_i
  id = params.fetch('id').to_i
  @restaurant = Restaurant.find(id)
  @restaurant.update({:name => name, :price => price})
  cuisine_id = @restaurant.cuisine_id
  @cuisine = Restaurant.find(cuisine_id)
  erb :cuisine
end

delete '/restaurants/:id' do
  id = params.fetch('id').to_i
  @restaurant = Restaurant.find(id)
  cuisine_id = @restaurant.cuisine_id
  @cuisine = Restaurant.find(cuisine_id)
  @restaurant.delete
  erb :cuisine
end
