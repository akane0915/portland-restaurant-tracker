class CreateCuisines < ActiveRecord::Migration[5.1]
  def change
    create_table(:cuisines) do |t|
      t.column(:type, :string)

      t.timestamps()
    end
  end
end
