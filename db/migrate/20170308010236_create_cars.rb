class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :year
      t.integer :price
      t.string :image
      t.string :description
      t.timestamps
    end
  end
end
