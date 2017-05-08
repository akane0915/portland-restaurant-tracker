class Restaurant < ActiveRecord::Base

  belongs_to(:cuisine)

  # scope(:not_done, -> do
  #   where({:done => false})
  # end)

  #
  # def delete
  #   DB.exec("DELETE FROM volunteers WHERE id = #{self.id};")
  # end

end
