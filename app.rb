require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './lib/restaurant'
require './lib/location'
require './lib/cuisine'
require 'pry'
also_reload('lib/**/*.rb')

get '/' do
  erb :index
end

get '/cuisines' do
  @cuisines = Cuisine.all
  erb :cuisines
end

post '/cuisines' do
  cuisine_type = params.fetch('cuisine_type')
  new_cuisine = Cuisine.create({:cuisine_type => cuisine_type})
  redirect '/cuisines'
end

get '/cuisines/:id' do
  id = params.fetch('id').to_i
  @cuisine = Cuisine.find(id)
  erb :cuisine
end

delete'/cuisines/:id' do
  id = params.fetch('id').to_i
  @cuisine = Cuisine.find(id)
  this_cuisine_restaurants = @cuisine.restaurants
  this_cuisine_restaurants.each do |restaurant|
    restaurant.update({cuisine_id: nil})
  end
  @cuisine.delete
  redirect '/cuisines'
end







get '/locations' do
  @locations = Location.all
  erb :locations
end

post '/locations' do
  neighborhood = params.fetch('neighborhood')
  new_location = Location.create({:neighborhood => neighborhood})
  redirect '/locations'
end

get '/locations/:id' do
  id = params.fetch('id').to_i
  @location = Location.find(id)
  erb :location
end

delete'/locations/:id' do
  id = params.fetch('id').to_i
  @location = Location.find(id)
  this_location_restaurants = @location.restaurants
  this_location_restaurants.each do |restaurant|
    restaurant.update({location_id: nil})
  end
  @location.delete
  redirect '/locations'
end





get '/restaurants' do
  @restaurants = Restaurant.all
  erb :restaurants
end

get '/restaurants/new' do
  @cuisines = Cuisine.all
  @locations = Location.all
  erb :restaurant_form
end

post '/restaurants' do
  name = params.fetch('name')
  price = params.fetch('price').to_i
  cuisine_id = params.fetch('cuisine_id').to_i
  location_id = params.fetch('location_id').to_i
  new_restaurant = Restaurant.create({:name => name, :price => price, :cuisine_id => cuisine_id, :location_id => location_id})
  redirect '/restaurants'
end

get '/restaurant/:id' do
  restaurant_id = params['id'].to_i
  @restaurant = Restaurant.find(restaurant_id)
  erb :restaurant
end
