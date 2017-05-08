require 'spec_helper'

describe(Cuisine) do
  describe("#restaurants") do
    it("tells which restaurants are in it") do
      test_cuisine = Cuisine.create({:type => "French"})
      test_restaurant1 = Restaurant.create({:name => "Andina", :cuisine_id => test_cuisine.id})
      test_restaurant2 = Restaurant.create({:name => "Spitz", :cuisine_id => test_cuisine.id})
     expect(test_cuisine.restaurants).to eq [test_restaurant1, test_restaurant2]
    end
  end
end
