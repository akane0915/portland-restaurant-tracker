class UpdateRestaurantsTableForeignKeys < ActiveRecord::Migration[5.1]
  def change
    drop_table :restaurants

    create_table :restaurants do |t|
      t.belongs_to :location, index: true
      t.belongs_to :cuisine, index: true
      t.string :name
      t.integer :price
      t.timestamps
    end
  end
end
