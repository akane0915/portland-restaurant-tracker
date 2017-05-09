require 'spec_helper'


describe(Location) do
  describe("#restaurants") do
    it("tells which restaurants are in it") do
      test_location = Location.create({:neighborhood => "Northwest"})
      test_restaurant1 = Restaurant.create({:name => "Andina", :location_id => test_location.id})
      test_restaurant2 = Restaurant.create({:name => "Spitz", :location_id => test_location.id})
     expect(test_location.restaurants).to eq [test_restaurant1, test_restaurant2]
    end
  end
end
