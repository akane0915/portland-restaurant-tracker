require 'spec_helper'

describe Restaurant do

  describe'#cuisine' do
    it 'tells which cuisine it belongs to' do
      test_cuisine = Cuisine.create({:cuisine_type => "French"})
      test_restaurant = Restaurant.create({:name => "restaurant", :cuisine_id => test_cuisine.id})
      expect(test_restaurant.cuisine).to eq test_cuisine
    end
  end

  describe'#location' do
    it 'tells which location it is in' do
      test_location = Location.create({:neighborhood => "Northwest"})
      test_restaurant = Restaurant.create({:name => "restaurant", :location_id => test_location.id})
      expect(test_restaurant.location).to eq test_location
    end
  end
end
