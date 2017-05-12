ENV['RACK_ENV'] = 'test'

require"sinatra/activerecord"
require "restaurant"
require "location"
require "cuisine"
require "rspec"
require "pry"
require "pg"

RSpec.configure do |config|
  config.after(:each) do
    Restaurant.all.each do |restaurant|
      restaurant.destroy
    end
    Location.all.each do |location|
      location.destroy
    end
    Cuisine.all.each do |cuisine|
      cuisine.destroy
    end
  end
end
