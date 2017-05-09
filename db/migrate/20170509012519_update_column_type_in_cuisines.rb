class UpdateColumnTypeInCuisines < ActiveRecord::Migration[5.1]
  def change
    remove_column(:cuisines, :type, :string)
    add_column(:cuisines, :cuisine_type, :string)
  end
end
