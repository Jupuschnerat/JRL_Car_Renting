class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :model
      t.string :city
      t.float :price
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
