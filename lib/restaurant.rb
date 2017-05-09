class Restaurant < ActiveRecord::Base
  belongs_to(:cuisine)
  belongs_to(:location)
end
