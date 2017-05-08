require 'spec_helper'

describe Restaurant do
  describe '.find' do
    it 'returns a restaurant by id' do
      restaurant1 = Restaurant.create({:name => 'Andina', :price => 4, :location_id => 1, :cuisine_id => 2})
      restaurant2 = Restaurant.create({:name => 'Spitz', :price => 2, :location_id => 3, :cuisine_id => 4})
      expect(Restaurant.find(restaurant1.id)).to eq restaurant1
    end
  end

  describe'#cuisine' do
    it 'tells which cuisine it belongs to' do
      test_cuisine = Cuisine.create({:type => "French"})
      test_restaurant = Restaurant.create({:description => "restaurant", :cuisine_id => test_cuisine.id})
      expect(test_restaurant.cuisine).to eq test_cuisine
    end
  end
end

  # describe(".not_done") do
  #   it("returns the not done tasks") do
  #     not_done_task1 = Task.create({:description => "gotta do it", :done => false})
  #     not_done_task2 = Task.create({:description => "gotta do it too", :done => false})
  #     not_done_tasks = [not_done_task1, not_done_task2]
  #     done_task = Task.create({:description => "done task", :done => true})
  #     expect(Task.not_done()).to(eq(not_done_tasks))
  #   end
  # end

  #
  # describe '#delete' do
  #   it 'allows a user to delete a volunteer' do
  #     test_volunteer = Volunteer.new({:name => 'Sally Randall', :hours => 10, :project_id => 1, :id => nil})
  #     test_volunteer.save
  #     test_volunteer.delete
  #     expect(Volunteer.all).to eq []
  #   end
  # end
