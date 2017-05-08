class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table(:restaurants) do |t|
      t.column(:name, :string)
      t.column(:price, :integer)
      t.column(:location_id, :integer)
      t.column(:cuisine_id, :integer)

      t.timestamps()
    end
  end
end
